require 'bundler/setup'

require "bundler/gem_tasks"

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec)
task :default => :spec

require 'active_record'
include ActiveRecord::Tasks

db_dir = File.expand_path('db', __dir__)
config_dir = File.expand_path('config', __dir__)

DatabaseTasks.env = ENV['APP_ENV'] || 'test'
DatabaseTasks.db_dir = db_dir
DatabaseTasks.database_configuration = YAML.load_file(File.join(config_dir, 'database.yml'))
DatabaseTasks.migrations_paths = []