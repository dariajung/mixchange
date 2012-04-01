class ChangeDataTypesInTableEvents < ActiveRecord::Migration
   def change
    change_table :events do |t|
    	t.change :start, :datetime
    	t.change :end, :datetime
    	t.change :date, :datetime
    end
end
end