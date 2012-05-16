class ChangeSomething < ActiveRecord::Migration
  def change
  	change_column :rankings, :position, :int
  end
end
