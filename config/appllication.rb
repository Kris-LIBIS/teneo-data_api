# frozen_string_literal: true

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'api'))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'app'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

# noinspection RubyResolve
require 'boot'

Bundler.require :default, ENV['APP_ENV']

# noinspection RubyBlockToMethodReference
Dir[File.expand_path('../api/*.rb', __dir__)].each do |f|
  require f
end

# noinspection RubyResolve
require 'api'
require 'data_api_app'