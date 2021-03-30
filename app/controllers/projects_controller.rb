class ProjectsController < ApplicationController

    def index
        projects = Project.all
        render json: projects
    end

    def show
        project = Project.find(params[:id])
        render json: project
    end

    def create
        project = Project.create(project_params)
        render json: project
    end

    def update
        project = Project.find(params[:id])
        project.update(project_params)
        render json: project
    end

    def destroy
        # byebug
        project = Project.find(params[:id])
        project.destroy
    end

    private

    def project_params
        params.require(:project).permit(:title, :notes, :priority, :team_id)
    end
end
