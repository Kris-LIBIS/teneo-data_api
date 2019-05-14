# frozen_string_literal: true

module Teneo
  module DataApi

    class Base < Grape::API
      prefix 'api'
      format :json
      mount V1::Organizations
    end

  end
end