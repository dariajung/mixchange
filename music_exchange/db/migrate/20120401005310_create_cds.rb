class CreateCds < ActiveRecord::Migration
  def change
    create_table :cds do |t|
      t.string :title

      t.timestamps
    end
  end
end
