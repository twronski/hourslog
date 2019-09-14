class CreateMainSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :main_skills do |t|
      t.string :name, :unique =>  true

      t.timestamps
    end
  end
end
