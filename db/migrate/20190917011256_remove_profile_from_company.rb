class RemoveProfileFromCompany < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :profile_id
  end
end
