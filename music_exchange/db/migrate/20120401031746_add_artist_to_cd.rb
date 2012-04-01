class AddArtistToCd < ActiveRecord::Migration
  def change
    add_column :cds, :artist, :string

  end
end
