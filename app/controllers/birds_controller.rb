class BirdsController < ApplicationController
    def index
        render json: Bird.all
    end

    def show
        bird = Bird.find_by(id: params[:id])

        if bird
        render json: bird, staus: :ok
        else
            render json: {error: "Bird not found"}, staus: :not_found
        end
    end
end
