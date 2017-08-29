class UsersController < ApplicationController
before_action :authenticate_user!

  def index
    @users = User.paginate(:page => params[:page], :per_page => 12).order('surname ASC')
  end

  def show
    @user = User.find(params[:id])
    # unless @user == current_user
    #  redirect_to users_path, :alert => "Access denied."
    # end
  end
end
