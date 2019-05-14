# frozen_string_literal: true
module Teneo::DataApi
  module V1
    class Base < Grape::API
      mount V1::Organizations
    end
  end
end

