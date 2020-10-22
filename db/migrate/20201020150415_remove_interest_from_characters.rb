class RemoveInterestFromCharacters < ActiveRecord::Migration[6.0]
  def change
    remove_column :characters, :interest
  end
end
