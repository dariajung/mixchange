class AddPositionToRankings < ActiveRecord::Migration
  def change
  	add_column :rankings, :guest_id, :int
  	add_column :rankings, :position, :int

  end
end
