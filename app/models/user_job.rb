class UserJob < ApplicationRecord
  belongs_to :user, optional: true###
  belongs_to :job, optional: true
  belongs_to :result, optional: true###
  belongs_to :requirement, optional: true###
end
