# project information
set :application, "ror-admin-template"
set :repository,  "git@github.com:magnet-cl/ror-admin-template.git"
set :scm, "git"
set :branch, "master"

# user configuration
set :use_sudo, false
set :user, "magnet"

# environment configuration
set :default_shell, "/bin/zsh --login"

# deployment options
set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :remote_cache
set :normalize_asset_timestamps, false

# remotes
role :web, "127.0.0.1"                          # Your HTTP server, Apache/etc
role :db,  "127.0.0.1", :primary => true # This is where Rails migrations will run

# dependencies installation
require 'bundler/capistrano'

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
