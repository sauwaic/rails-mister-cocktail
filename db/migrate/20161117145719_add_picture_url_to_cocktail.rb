class AddPictureUrlToCocktail < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :picture_url, :string
  end
end
