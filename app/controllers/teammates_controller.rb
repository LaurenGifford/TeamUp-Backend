class TeammatesController < ApplicationController

    def show
        teammate = Teammate.find(params[:id])
        render json: teammate
    end
end
