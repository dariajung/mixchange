class Ranking < ActiveRecord::Base

	belongs_to :suggestion, :dependent => :destroy

end