# frozen_string_literal: true

module Teneo::DataApi::V1
  module Defaults
    extend ActiveSupport::Concern

    included do
      prefix 'api'
      version 'v1', using: :path
      default_format :json
      format :json
      formatter :json, Grape::Formatter::ActiveModelSerializers

      helpers do
        def permitted_params(include_missing: false)
          @permitted_params ||= declared(params, include_missing: include_missing)
        end

      end
    end
  end
end
