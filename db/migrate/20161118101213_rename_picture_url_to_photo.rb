class RenamePictureUrlToPhoto < ActiveRecord::Migration[5.0]
  def change
    rename_column :cocktails, :picture_url, :photo
  end
end
