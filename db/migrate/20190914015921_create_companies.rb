class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name, :unique =>  true
      t.string :address
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
