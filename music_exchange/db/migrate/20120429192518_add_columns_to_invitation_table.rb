class AddColumnsToInvitationTable < ActiveRecord::Migration
  def change
  	add_column :invitations, :event_id, :int
  	add_column :invitations, :user_id, :int
  end
end
