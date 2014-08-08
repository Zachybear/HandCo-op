lock '3.1.0'

set :application, 'HandCo-op'
set :repo_url, 'git@github.com:Zachybear/HandCo-op.git'

set :deploy_to, '/home/deploy/HandCo-op'

set :linked_files, %w{config/database.yml config/secrets.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

#set :rvm_ruby 2.1.2, :deploy
set :rvm_ruby_version, '2.1.2'

set :log_level, :debug

# SSH forward
set :pty, true

set :ssh_options, {
  #verbose: :debug,
  keys: %w($HOME/.ssh/id_rsa),
  forward_agent: true,
  auth_methods: %w(publickey password)
}


namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      #execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end


desc "Get server info"
task :uname do
   on roles(:all) do
     #output = capture "sudo uname -a"
   output = capture 'pwd'
   puts output
 end
end
