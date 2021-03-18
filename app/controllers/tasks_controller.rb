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
        # byebug
        task = Task.create(title: params[:title], description: params[:description], due_date: date_obj, status: params[:status], project_id: params[:project_id])
        render json: task
    end

    def update
        # byebug
        task = Task.find(params[:id])
        task.update(task_params)
        render json: task
    end

    private

    def task_params
        params.require(:task).permit(:title, :description, :due_date, :status, :project_id)
    end
end
