class RolesController < ApplicationController

  def index
    @roles = Role.all()
  end

  def edit
  	@user = User.find(params[:id])  	
  end

  def update
    @user = User.find(params[:id])
    roles_id = params[:role_checkbox]
    if roles_id.nil?
      @user.roles = []
    else
      @user.roles = Role.find([roles_id])
    end
    redirect_to users_path
  end  	

end	