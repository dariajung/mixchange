class AddEndToEvent < ActiveRecord::Migration
  def change
    add_column :events, :end, :string

  end
end
