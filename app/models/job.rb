class Job < ApplicationRecord
	has_many :user_jobs, dependent: :destroy
	# belongs_to :user
	accepts_nested_attributes_for :user_jobs, allow_destroy: true, reject_if: :all_blank
	def to_s
		self.job_name
	end

	# def user_name
	# 	user.try(:name)
	# end

	# def user_name=(name)
	# 	self.user = User.find_by_name(name) if name.present?
	# end


end
