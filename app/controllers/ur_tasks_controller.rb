class UrTasksController < ApplicationController

    def index
        all = UrTask.all
        render json: all
    end

    def create
        ur_task = UrTask.create(ur_task_params)
        render json: ur_task
    end

    def destroy
        ur_task = UrTask.find(params[:id])
        ur_task.destroy
    end


    private

    def ur_task_params
        params.require(:ur_task).permit(:teammate_id, :task_id)
    end
end
