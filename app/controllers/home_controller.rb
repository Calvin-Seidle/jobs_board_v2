class HomeController < ApplicationController
   
  def index
  	if current_user
  		redirect_to users_url
  	end
  end

  def about
  end

  def search
    @users = User.ransack(name_cont: params[:q]).result(distinct: true)
    @jobs = Job.ransack(job_name_cont: params[:q]).result(distinct: true)

    respond_to do |format|
      format.html {}
      format.json {
        @users = @users.limit(5)
        @jobs = @jobs.limit(5)
      }
    end 
  end

end
