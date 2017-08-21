class Job < ApplicationRecord
	has_many :user_jobs
	accepts_nested_attributes_for :user_jobs
	def to_s
		self.job_name
	end
end
