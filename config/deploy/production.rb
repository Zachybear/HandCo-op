set :nginx_server_name, 'handco-op.com www.handco-op.com'
set :unicorn_workers, 3
set :nginx_use_ssl, false

set :server_name, "handco-op.com"

set :rails_env, 'production'
set :user, "deploy"
set :server_ssh, "#{fetch(:user)}@#{fetch(:server_name)}"

role :app, fetch(:server_ssh)
role :web, fetch(:server_ssh)
role :db,  fetch(:server_ssh), primary: true

server fetch(:server_name), user: fetch(:user), roles: %w{app web}
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                        
