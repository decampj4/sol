module API
  module V1
    class Reviews < Grape::API
      version 'v1'
      format :json

      helpers do
      end

      resource :reviews do
        desc 'Return all reviews'

        params do
        end

        get do
          Review.all
        end
      end

      resource :review do
        params do
          requires :rating, type: Integer
          requires :content, type: String
        end
        post do
          Review.create!(params.slice(:rating, :content).inject({}){|h,entry| h.merge!(entry[0].to_sym => entry[1])})
        end
      end
    end
  end
end