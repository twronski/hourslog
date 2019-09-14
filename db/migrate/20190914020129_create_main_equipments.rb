class CreateMainEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :main_equipments do |t|
      t.string :name, :unique =>  true

      t.timestamps
    end
  end
end
