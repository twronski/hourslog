class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.integer :status
      t.text :description

      t.timestamps
    end
  end
end
