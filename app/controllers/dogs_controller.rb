class DogsController < ApplicationController
    skip_before_action :authorize

    def index
        dogs = Dog.all
        render json: dogs
    end
    def show
        dog = Dog.find(params[:id])
        render json: dog
    end
    def update
        dog = Dog.find(params[:id])
        dog.update!(dog_params)
        render json: dog
    end

    private
    def dog_params
        params.permit(:id, :user_id, :hunger, :thirst, :happiness, :energy, :potty)
    end
end
