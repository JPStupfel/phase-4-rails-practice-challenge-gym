class GymsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :no_gym

    def show
        gym = Gym.find_by! id: params['id']
        render json: gym
    end

    def destroy
        gym = Gym.find_by! id: params['id']
        gym.destroy
        render json: {}, status: 204
    end
        

    private
    def no_gym
        render json: {message: 'Gym not found'}, status: 404
    end

end
