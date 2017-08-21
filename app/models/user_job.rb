class UserJob < ApplicationRecord
  belongs_to :user
  belongs_to :job
  belongs_to :result
  belongs_to :requirement
end
