module API
  module V1
    class Properties < Grape::API
      version 'v1'
      format :json

      helpers do
      end

      resource :properties do
        desc 'Return all properties'

        params do
        end

        get do
          Property.all
        end
      end
    end
  end
end