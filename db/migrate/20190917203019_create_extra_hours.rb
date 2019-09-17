class CreateExtraHours < ActiveRecord::Migration[5.2]
  def change
    create_table :extra_hours do |t|
      t.references :project, foreign_key: true
      t.date :execution_date
      t.references :profile, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
