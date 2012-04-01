class AddNameToEvents < ActiveRecord::Migration
  def change
    add_column :events, :event_name, :string

  end
end
