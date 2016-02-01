module API
  module V1
    class Landlords < Grape::API
      version 'v1'
      format :json

      helpers do
      end

      resource :landlords do
        desc 'Return all landlords'

        params do
        end

        get do
          Landlord.all
        end
      end
    end
  end
end