class AddMainEquipmentToHoursRecord < ActiveRecord::Migration[5.2]
  def change
    add_reference :hours_records, :main_equipment, foreign_key: true
  end
end
