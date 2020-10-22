class ChangeLevelToInteger < ActiveRecord::Migration[6.0]
  def change 
    change_column :relationships, :level, :integer
  end
end
