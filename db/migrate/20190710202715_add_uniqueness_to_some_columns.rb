class AddUniquenessToSomeColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :projects, :wbs, :string, unique: true
    change_column :activities, :name, :string, unique: true
    change_column :voltage_levels, :name, :string, unique: true
    change_column :bays, :name, :string, unique: true
  end
end
