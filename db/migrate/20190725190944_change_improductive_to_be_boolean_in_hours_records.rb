class ChangeImproductiveToBeBooleanInHoursRecords < ActiveRecord::Migration[5.2]
  def up
    change_column :hours_records, :improductive, 'boolean USING CAST(improductive AS boolean)'
  end

  def down
    change_column :hours_records, :improductive, 'integer USING CAST(improductive AS integer)'
  end
end
