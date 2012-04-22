class Cd < ActiveRecord::Base
	
	attr_accessible :album_name, :artist
	#has_secure_password
	#validates_presence_of :password, :on => :create

	has_many :suggestions, :dependent => :destroy
	has_many :events, :through => :suggestions

	validate :album_name_cannot_be_blank
	def album_name_cannot_be_blank
		if album_name.blank?
			errors.add(:album_name, "Please enter an LP or EP name. If it is a mixtape, label it Mixtape.")
		end
	end

	validate :artist_cannot_be_blank
	def artist_cannot_be_blank
		if artist.blank?
			errors.add(:artist, "Please enter the name of the musician. Don't keep them for yourself, you hipster.")
		end
	end

end
