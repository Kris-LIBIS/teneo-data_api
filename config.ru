# frozen_string_literal: true

require File.expand_path('config/environment', __dir__)

# if ENV['APP_ENV'] == 'development'
#   puts 'Loading NewRelic in developer mode ...'
#   require 'new_relic/rack/developer_mode'
#   use NewRelic::Rack::DeveloperMode
# end
#
# NewRelic::Agent.manual_start

run Teneo::DataApi::App.instance