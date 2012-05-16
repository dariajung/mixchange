class Event < ActiveRecord::Base

	has_many :suggestions, :dependent => :destroy
	has_many :cds, :through => :suggestions

	has_many :invitations, :dependent => :destroy
	has_many :users, :through => :invitations

	def rankings(user)
   	 return Ranking.where(:suggestion_id => self.suggestions.collect(&:id), :user_id => user.id).order(:position)
  	end
  
  	def top_three_rankings
  		cds = {}
  		all_suggestions = self.suggestions
  		for suggestion in all_suggestions
  			suggestion.rankings.each do |ranking|
  				cds[suggestion.cd_id] = cds[suggestion.cd_id].to_i + Integer(ranking.position)
  			end
  		end
  		order = cds.sort{|a,b| a[1]<=>b[1]}
  		if !order.blank?
  			top = [Cd.find_by_id(order[0][0]).album_name, Cd.find_by_id(order[1][0]).album_name, Cd.find_by_id(order[2][0]).album_name]
  			return top
  		end
  	else return ""
  	end	
	

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

