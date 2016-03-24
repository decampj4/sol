module API
  module V1
    class Reviews < Grape::API
      version 'v1'
      format :json

      helpers do
        def review_params
          params.slice(:rating, :content, :property_id)
        end
      end

      resource :reviews do
        desc 'Return all reviews'
        params do
        end
        get do
          Review.all
        end

        desc 'Get reviews by property id'
        params do
          requires :id, type: Integer
        end
        get :by_property do
          Review.where(property_id: params[:id])
        end

        desc 'Get reviews by landlord id'
        params do
          requires :id, type: Integer
        end
        get :by_landlord do
          landlord = Landlord.find_by(id: params[:id])
          return [] unless landlord
          Review.where(property_id: landlord.properties.map(&:id))
        end
      end

      resource :review do
        params do
          requires :rating, type: Integer
          requires :content, type: String
          requires :property_id, type: Integer
        end
        post do
          Review.create!(review_params.inject({}){|h,entry| h.merge!(entry[0].to_sym => entry[1])})
        end
      end
    end
  end
end