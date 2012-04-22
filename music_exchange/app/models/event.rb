class Event < ActiveRecord::Base
 
	#has_secure_password
	#validates_presence_of :password, :on => :create

	has_many :suggestions, :dependent => :destroy
	has_many :cds, :through => :suggestions

	validate :location_cannot_be_blank
	def location_cannot_be_blank
		if location.blank?
			errors.add(:location, "Where is the event happening?")
		end
	end

	validate :start_time_cannot_be_blank
	def start_time_cannot_be_blank
		if start_time.blank?
			errors.add(:start_time, "What time does the event start?")
		end
	end

	validate :end_time_cannot_be_blank
	def end_time_cannot_be_blank
		if (end_time.blank?)
			errors.add(:end_time, "What time does the event end?")
		end
	end

end
