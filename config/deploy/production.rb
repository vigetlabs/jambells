server "162.243.250.241", :app, :web, :db, :primary => true
set :user, 'www-data'
set :branch, :master
set :mix_env, :dev
set :deploy_to, "/var/www/ding_my_bells"

set :default_environment, {
  'PATH' => "$PATH:/var/www/src/elixir/bin" # --> replace by path to your elixir bin folder
}
