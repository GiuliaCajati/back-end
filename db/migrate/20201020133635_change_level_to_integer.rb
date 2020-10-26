class ChangeLevelToInteger < ActiveRecord::Migration[6.0]
  def change 
    change_column :relationships, :level, 'integer USING CAST(column_name AS integer)'
  end
end
