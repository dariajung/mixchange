class ChangeInCdsTitleToAlbumName < ActiveRecord::Migration
  def change
  	change_table :cds do |t|
      t.rename :title, :album_name
    end
  end
end
