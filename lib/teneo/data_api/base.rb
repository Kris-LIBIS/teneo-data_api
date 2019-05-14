# frozen_string_literal: true
require 'grape'
require 'v1/base'

module Teneo
  module DataApi

    class Base < Grape::API
      mount V1::Base
    end
  end
end