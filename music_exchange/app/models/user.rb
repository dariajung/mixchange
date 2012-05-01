class User < ActiveRecord::Base

	attr_accessible :email, :name, :surname, :about, :username, :password, :password_digest, :password_confirmation
	has_secure_password
	validates_presence_of :password, :on => :create

	has_many :events
	has_many :suggestions
	has_many :invitations, :dependent => :destroy
	has_many :events, :through => :invitations

	validates_format_of :email, :with => 
	/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

	validates_format_of :email, :with => 
	/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :update

	validates :email, :uniqueness => true

	validates :username, :uniqueness => true

	validate :email_cannot_be_blank
	def email_cannot_be_blank
		if email.blank?
			errors.add(:email, "Please enter a valid email.")
		end
	end
end
