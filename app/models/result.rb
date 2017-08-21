class Result < ApplicationRecord
	belongs_to :user_jobs
	def to_s
		self.result 
	end
end
