class Event < ActiveRecord::Base
 
	has_secure_password
	validates_presence_of :password, :on => :create

	has_many :suggestions, :dependent => :destroy
	has_many :cds, :through => :suggestions

end
