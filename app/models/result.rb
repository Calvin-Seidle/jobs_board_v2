class Result < ApplicationRecord
	has_many :user_jobs
	def to_s
		self.result 
	end
end
