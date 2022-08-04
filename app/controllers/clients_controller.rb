class ClientsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :no_client
    def show
        client = Client.find_by! id: params['id']
        render json: client, methods: :spending
    end

    private
    def no_client
        render json: {message: 'no client found'}, status: 404
    end
end
