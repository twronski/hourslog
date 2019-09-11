class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.float :quality_ev
      t.float :time_ev
      t.float :organization_ev
      t.integer :status
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
