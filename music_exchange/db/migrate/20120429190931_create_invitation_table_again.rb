class CreateInvitationTableAgain < ActiveRecord::Migration
  def change
  	create_table :invitations do |t|
      t.string :event_name

      t.timestamps
    end
  end
end