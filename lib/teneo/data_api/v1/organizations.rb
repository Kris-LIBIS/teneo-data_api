# frozen_string_literal: true

module Teneo::DataApi::V1
  class Organizations < Grape::API

    resource :organizations do

      desc 'List of all organizations'
      get '', root: :organizations do
        Teneo::DataModel::Organization.all
      end

      desc 'Organization detail'
      params do
        requires :id, type: Integer, desc: 'ID of the organization'
      end
      get ':id', root: 'organization' do
        Teneo::DataModel::Organization.where(id: permitted_params[:id]).first!
      end
    end
  end
end
