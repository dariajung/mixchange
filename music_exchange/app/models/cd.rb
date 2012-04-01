class Cd < ActiveRecord::Base
	attr_accessible :album_name, :artist

	has_many :suggestions, :dependent => :destroy
	has_many :events, :through => :suggestions

end
