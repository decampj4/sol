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

      resource :landlord do
        desc 'Create a new landlord'
        params do
          requires :name, type: String
          optional :company, type: String
        end
        post do
          Landlord.create!(params.slice(:name, :company).inject({}){|h,entry| h.merge!(entry[0].to_sym => entry[1])})
        end
      end
    end
  end
end