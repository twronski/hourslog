class CreateProfileSubSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_sub_skills do |t|
      t.references :profile, foreign_key: true
      t.references :sub_skill, foreign_key: true
      t.integer :level
      t.integer :status
      t.date :expiration_date

      t.timestamps
    end
  end
end
