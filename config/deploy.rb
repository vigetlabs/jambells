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

after "deploy:update", "deploy:prepare"

namespace :assets do
  task :precompile, roles: :web do
    # do nothing
  end
end

def is_application_running?(current_path)
  pid = capture(%Q{ps ax -o pid= -o command=|
      grep "/var/www/ding_my_bells/current/rel/ding_my_bells/.*/[b]eam"|awk '{print $1}'})
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
    symlink
    build
  end

  task :symlink, roles: :web do
    run <<-TASKS
      cd #{current_path} &&
      cp #{shared_path}/repo.ex #{release_path}/lib/ding_my_bells/repo.ex
    TASKS
  end

  task :build, roles: :web do
    run <<-TASKS
      cd #{current_path}                &&
      mix deps.get                      &&
      npm install                       &&
      ./node_modules/.bin/gulp build    &&
      ./node_modules/.bin/gulp compress &&
      MIX_ENV=#{mix_env} mix release
    TASKS
  end

  task :restart, roles: :web do
    if is_application_running?(current_path)
      run "cd #{current_path}/rel/ding_my_bells/bin && ./ding_my_bells stop"
    end

    run "cd #{current_path}/rel/ding_my_bells/bin && ./ding_my_bells start"
  end

  task :start, roles: :web do
    run "cd #{current_path}/rel/ding_my_bells/bin && ./ding_my_bells start"
  end

  task :migrate, roles: :web do
    if is_application_running?(current_path)
      run "cd #{current_path} && ./rel/ding_my_bells/bin/ding_my_bells stop && mix ecto.migrate Repo && ./rel/ding_my_bells/bin/ding_my_bells start"
    else
      run "cd #{current_path} && mix ecto.migrate Repo && ./rel/ding_my_bells/bin/ding_my_bells start"
    end
  end

  task :stop, roles: :web do
    run "cd #{current_path}/rel/ding_my_bells/bin && ./ding_my_bells stop"
  end
end
