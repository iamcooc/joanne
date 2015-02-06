class Invite < ActiveRecord::Base


	
	validates :name, presence: true, length: {maximum: 30}
	validates :phone, presence: true, length: {maximum: 30}
	validates :address, presence: true, length: {maximum: 60}

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}, :allow_blank => true
	
	


end
