class User < ApplicationRecord
  has_many :user_jobs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: { large: "500x500", medium: "300x300>", small: "100x100>", thumb: "50x50>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  # validates_attachment_content_type :avatar, content_type: [
 	#   'image/png',
 	#   'image/jpg',	
 	#   'image/jpeg',
 	#   'image/gif',	
  #     'application/msword',
  #     'application/pdf',
  #     'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
  #     'application/zip']

end
