require 'capistrano/ext/multistage'

set :stages, ["staging", "production"]
set :default_stage, "production"

set :keep_releases, 5
set :application, "My Awesome App"
set :repository,  "git@github.com:vigetlabs/ding_my_bells.git"
set :scm, :git
set :branch, :master
set :use_sudo, false
set :ssh_options, {:forward_agent => true}

set :normalize_asset_timestamps, false
set :deploy_via, :remote_cache

after "deploy:finalize_update", "deploy:prepare"

namespace :assets do
  task :precompile, roles: :web do
    # do nothing
  end
end

def is_application_running?(path)
  pid = capture(%Q{ps ax -o pid= -o command=|
      grep "#{path}/rel/ding_my_bells/.*/[b]eam"|awk '{print $1}'})
  return pid != ""
end

namespace :deploy do
  task :is_running, roles: :web do
    is_running = is_application_running?(current_path)
    if is_running
      puts "Application is running"
    else
      puts "Application is NOT running"
    end
  end

  task :prepare, roles: :web do
    pre_build
    build
    post_build
  end

  task :pre_build, roles: :web do
    run <<-TASKS
      ln -nsf #{shared_path}/repo.ex      #{release_path}/lib/ding_my_bells/repo.ex &&
      ln -nsf #{shared_path}/deps         #{release_path}/deps                      &&
      ln -nsf #{shared_path}/node_modules #{release_path}/node_modules
    TASKS
  end

  task :build, roles: :web do
    run <<-TASKS
      cd #{release_path}                &&
      mix deps.get                      &&
      npm install                       &&
      ./node_modules/.bin/gulp build    &&
      ./node_modules/.bin/gulp compress &&
      ./node_modules/.bin/gulp rev      &&
      rm priv/static/js/app.js          &&
      rm priv/static/css/app.css        &&
      MIX_ENV=#{mix_env} mix release
    TASKS
  end

  task :post_build, roles: :web do
    run "cp -r #{release_path}/_build #{shared_path}/_build"
  end

  task :restart, roles: :web do
    stop if is_application_running?(current_path)
    start
  end

  task :start, roles: :web do
    run "cd #{current_path}/rel/ding_my_bells/bin && JB_ASSET_PATH=#{current_path}/priv/static ./ding_my_bells start"
  end

  task :migrate, roles: :web do
    if is_application_running?(current_path)
      stop
      run "cd #{current_path} && mix ecto.migrate Repo"
      start
    else
      run "cd #{current_path} && mix ecto.migrate Repo"
      start
    end
  end

  task :stop, roles: :web do
    run "cd #{current_path}/rel/ding_my_bells/bin && ./ding_my_bells stop"
  end
end
