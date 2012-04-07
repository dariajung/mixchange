class User < ActiveRecord::Base

	validates_format_of :email, :with => 
	/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

	validates_format_of :email, :with => 
	/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :update

	validates :email, :uniqueness => true

	validates :username, :uniqueness => true

	validate :username_cannot_be_blank
	def username_cannot_be_blank
		if username.blank?
			errors.add(:username, ": Wait, what do you want to be known as?")
		end
	end

	validate :name_cannot_be_blank
	def name_cannot_be_blank
		if name.blank?
			errors.add(:name, ": WHO ARE YOU?")
		end
	end

	validate :surname_cannot_be_blank
	def surname_cannot_be_blank
		if surname.blank?
			errors.add(:surname, ": WHO ARE YOU?")
		end
	end

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
