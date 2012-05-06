class AddCdIdToRankingsTable < ActiveRecord::Migration
  def change
  	add_column :rankings, :cd_id, :int
  end
end
