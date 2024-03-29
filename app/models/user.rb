class User < ApplicationRecord
	before_save { self.email = email.downcase }
	validates :name, presence: true, length: { maximum: 90 } 
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
	validates :password, presence: true, length: { minimum: 8 } 
	has_secure_password
	has_many :reservations, dependent: :destroy
	has_many :rooms, through: :reservations

	def is_admin? 
		self.admin
	end

	def switch_role
		role = self.admin
		self.update_attribute("admin", !role)
	end
	
end
