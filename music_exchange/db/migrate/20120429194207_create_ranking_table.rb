class CreateRankingTable < ActiveRecord::Migration
  def change
  	create_table :rankings do |t|
      t.integer :cd_id

      t.timestamps
    end
  end
end
