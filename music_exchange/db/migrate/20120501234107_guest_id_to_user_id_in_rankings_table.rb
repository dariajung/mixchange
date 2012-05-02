class GuestIdToUserIdInRankingsTable < ActiveRecord::Migration
  def change
  	rename_column :rankings, :guest_id, :user_id
  end
end
