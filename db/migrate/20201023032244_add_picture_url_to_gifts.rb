class AddPictureUrlToGifts < ActiveRecord::Migration[6.0]
  def change
      add_column :gifts, :picture_url, :string
  end
end
