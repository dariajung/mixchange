class ChangeInDefaultValueOfPosition < ActiveRecord::Migration
  def change
  	change_column :rankings, :position, :int, :default => 1
  end
end
