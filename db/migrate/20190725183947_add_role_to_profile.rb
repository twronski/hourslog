class AddRoleToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :role, :integer
  end
end
