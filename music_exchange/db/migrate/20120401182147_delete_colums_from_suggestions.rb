class DeleteColumsFromSuggestions < ActiveRecord::Migration
  def change
  	remove_column :suggestions, :name
  	remove_column :suggestions, :artist
  end
  

end
