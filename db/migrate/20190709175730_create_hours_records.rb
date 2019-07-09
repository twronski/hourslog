class CreateHoursRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :hours_records do |t|
      t.date :day
      t.decimal :man_hour, precision: 4, scale: 2
      t.references :activity, foreign_key: true
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.references :bay, foreign_key: true
      t.references :voltage_level, foreign_key: true
      t.integer :status
      t.text :description
      t.integer :improductive
      # t.references :improductive_reason, foreign_key: true
      t.timestamps
    end
  end
end
