class Requirement < ApplicationRecord
  belongs_to :job

  def to_s
  	self.requirement
  end
end
