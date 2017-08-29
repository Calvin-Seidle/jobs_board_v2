class JobMailer < ApplicationMailer
  def jobs(user)
  	# @user_job = user_job
    @user = user

    mail to: user.email, subject: "Jobs", from: "info@littlepig.cc"
  end
end
