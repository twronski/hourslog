class CreateImprovementActions < ActiveRecord::Migration[5.2]
  def change
    create_table :improvement_actions do |t|
      t.string :title
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
