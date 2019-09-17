class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :wbs
      t.string :name
      t.text :description
      t.integer :ct_id, index:true
      t.integer :pm_id, index:true

      t.timestamps
    end
    add_foreign_key :projects, :profiles, column: :ct_id
    add_foreign_key :projects, :profiles, column: :pm_id
  end

end
