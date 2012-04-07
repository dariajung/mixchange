class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :surname
      t.string :password
      t.string :email
      t.string :about

      t.timestamps
    end
  end
end
