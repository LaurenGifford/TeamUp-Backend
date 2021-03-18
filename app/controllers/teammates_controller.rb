class TeammatesController < ApplicationController

    def show
        teammate = Teammate.find(params[:id])
        render json: teammate
    end

    def update
        tm = Teammate.find(params[:id])
        tm.update(tm_params)
        render json: tm
    end

    private

    def tm_params
        params.require(:teammate).permit(:name, :points, :team_id)
    end
end
