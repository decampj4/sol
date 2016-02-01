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
          {'Test' => 'response'}
        end
      end
    end
  end
end