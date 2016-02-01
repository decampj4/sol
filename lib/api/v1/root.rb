module API
  module V1
    class Root < Grape::API
      version 'v1', using: :path

      mount API::V1::Landlords
      mount API::V1::Properties
      mount API::V1::Reviews
    end
  end
end