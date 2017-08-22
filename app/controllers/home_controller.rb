class HomeController < ApplicationController
  def index
  	if current_user
  		redirect_to users_url
  	end
  end

  def about
  end

  def search
    @users = User.ransack(params[:q]).result(distinct: true)
    @jobs = Job.ransack(params[:q]).result(distinct: true)
  	# render json: {users: [], jobs: []}
  end
end
