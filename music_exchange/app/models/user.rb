class User < ActiveRecord::Base

	attr_accessible :email, :name, :surname, :about, :username, :password, :password_confirmation
	has_secure_password
	validates_presence_of :password, :on => :create

	validates_format_of :email, :with => 
	/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

	validates_format_of :email, :with => 
	/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :update

	validates :email, :uniqueness => true

	validates :username, :uniqueness => true

	validate :password_cannot_be_blank
	def password_cannot_be_blank
		if password.blank?
			errors.add(:password, ": This is important, yo.")
		end
	end

	validate :email_cannot_be_blank
	def email_cannot_be_blank
		if email.blank?
			errors.add(:email, ": How else are we going to keep in touch?")
		end
	end
end
