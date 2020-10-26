class ChangeLevelToInteger < ActiveRecord::Migration[6.0]
  def change 
    change_column :relationships, :level, 'integer USING CAST(level AS integer)'
  end
end
