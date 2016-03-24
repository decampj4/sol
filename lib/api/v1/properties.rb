module API
  module V1
    class Properties < Grape::API
      version 'v1'
      format :json

      helpers do
        def property_params
          params.slice(:street_address_one, :street_address_two, :neighborhood, :city, :state, :postal_code, :country,
            :bedrooms, :baths, :square_footage, :landlord_id)
        end
      end

      resource :properties do
        desc 'Return all properties'
        params do
        end
        get do
          Property.all
        end

        desc 'Get properties by landlord id'
        params do
          requires :id, type: Integer
        end
        get :by_landlord do
          Property.where(landlord_id: params[:id])
        end
      end

      resource :property do
        params do
          requires :street_address_one, type: String
          requires :city, type: String
          requires :state, type: String
          requires :postal_code, type: String
          requires :country, type: String
          requires :landlord_id, type: Integer

          optional :street_address_two, type: String
          optional :neighborhood, type: String
          optional :bedrooms, type: Integer
          optional :baths, type: Float
          optional :square_footage, type: Float
        end
        post do
          Property.create!(property_params.inject({}){|h,entry| h.merge!(entry[0].to_sym => entry[1])})
        end
      end
    end
  end
end
