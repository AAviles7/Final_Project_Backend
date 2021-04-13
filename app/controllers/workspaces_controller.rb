class WorkspacesController < ApplicationController

    def index
        workspaces = Workspace.all
        render json: workspaces, include: [:channels, :users]
    end

    def create
        workspace = Workspace.create!({
            name: permitted_params['name'],
            join_code: permitted_params['join_code']
        })
        render json: workspace
    end

    def show
        workspace = Workspace.find_by(id: params[:id])
        render json: workspace, include: [:channels, :users]
    end

    def permitted_params
        params.require(:workspace).permit(:name, :join_code)
    end

end
