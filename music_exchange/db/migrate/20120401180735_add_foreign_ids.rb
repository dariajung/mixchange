class AddForeignIds < ActiveRecord::Migration
  def change
  	add_column :cds, :event_id, :int
  	add_column :suggestions, :event_id, :int
  	add_column :suggestions, :cd_id, :int
  end
end
