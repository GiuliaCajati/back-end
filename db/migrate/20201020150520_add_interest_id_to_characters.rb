class AddInterestIdToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :interest_id, :integer
  end
end
