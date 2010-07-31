set :remote, "production"
set :branch, "deploy"
set :use_sudo, false
server remote_host, :app, :web, :db, :primary => true
