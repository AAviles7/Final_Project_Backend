class WorkspaceMembersController < ApplicationController

    def index
        workspace_members = WorkspaceMember.all
        render json: workspace_members
    end

    def create
        workspace_member = WorkspaceMember.create!({
            workspace_id: permitted_params['workspace_id'],
            user_id: permitted_params['user_id']
        })
        render json: workspace_member
    end

    def show
        workspace_member = WorkspaceMember.find_by(id: params[:id])
        render json: workspace_member
    end

    def edit
        workspace_member = WorkspaceMember.find_by(id: params[:id])
        render json: workspace_member
    end

    def update
        workspace_member = WorkspaceMember.find_by(id: params[:id])
        workspace_member.update(permitted_params)
        render json: workspace_member
    end

    def destroy
        workspace_member = WorkspaceMember.find_by(id: params[:id])
        workspace_member.destroy
    end

    def permitted_params
        params.require(:workspace_member).permit(:workspace_id, :user_id, :remember)
    end

end
