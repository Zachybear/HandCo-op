#load DSL and Setup Up Stages
require 'capistrano/setup'

# Includes default deployment tasks
require 'capistrano/deploy'
require 'capistrano/rails'
require 'capistrano/bundler'
require 'capistrano3/nginx_unicorn'
require 'capistrano/rvm'

#loads custom tasks from `lib/capistrano/tasks' if you have any defined.

Dir.glob('lib/capistrano/tasks/*.cap').each { |r| import r }
                                                              
