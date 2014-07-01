class SessionsController < ApplicationController
  
  def new
  	@user = User.new
  end

  def create
    @user = User.find_by(name: params[:session][:username].downcase)
    if @user && @user.authenticate(params[:session][:password])
      #sign_in @user
      redirect_back_or @user
    else
      redirect_to root_url @user
    end
  end

  def destroy
  	#sign_out
    redirect_to root_url
  end

end
