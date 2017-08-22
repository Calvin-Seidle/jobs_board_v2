class Job < ApplicationRecord
	has_many :user_jobs, dependent: :destroy
	accepts_nested_attributes_for :user_jobs, allow_destroy: true, reject_if: :all_blank
	def to_s
		self.job_name
	end
end
