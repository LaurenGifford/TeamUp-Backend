class TasksController < ApplicationController

    def index
        tasks = Task.all
        render json: tasks
    end

    def show
        task = Task.find(params[:id])
        render json: task
    end

    def create
        task = Task.create(task_params)
        render json: task
    end

    private

    def task_params
        params.require(:task).permit(:title, :description, :due_date, :status, :project_id)
    end
end
