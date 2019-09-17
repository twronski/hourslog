class CreateAccessTemplateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :access_template_profiles do |t|
      t.references :access_template, foreign_key: true
      t.references :profile, foreign_key: true
      t.integer :status
      t.date :expiration_date

      t.timestamps
    end
  end
end
