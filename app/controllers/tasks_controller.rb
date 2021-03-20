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
        date_str = params[:due_date]
        date_obj = Date.parse(date_str)
        task = Task.create(title: params[:title], description: params[:description], due_date: date_obj, completed: params[:completed], project_id: params[:project_id])
        render json: task
    end

    def update
        task = Task.find(params[:id])
        task.update(task_params)
        # byebug
        render json: task
    end


    private

    def task_params
        params.require(:task).permit(:title, :description, :due_date, :completed, :project_id)
    end
end
