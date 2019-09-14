class CreateAccessTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :access_templates do |t|
      t.string :name, :unique =>  true
      t.text :description
      t.boolean :mandatory

      t.timestamps
    end
  end
end
