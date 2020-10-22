class AddFavoriteGiftToInterests < ActiveRecord::Migration[6.0]
  def change
    add_column :interests, :favorite_gift, :string
  end
end
