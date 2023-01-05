class DogsController < ApplicationController
    skip_before_action :authorize
    before_action :find_dog, only: [:show, :update]
    def index
        dogs = Dog.all
        render json: dogs
    end
    def show
        render json: @dog
    end
    def update
        if @current_user.dogs.include?(@dog)
            @dog&.update!(dog_params)
            render json: @dog
        else
            render json: { error: "Not authorized" }, status: :unauthorized
    end

    private
    def dog_params
        params.permit(:id, :user_id, :hunger, :thirst, :happiness, :energy, :potty)
    end
    def find_dog
        @dog = Dog.find(params[:id])
    end
end
