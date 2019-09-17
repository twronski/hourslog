class AddProfileToImprovementAction < ActiveRecord::Migration[5.2]
  def change
    add_reference :improvement_actions, :profile, foreign_key: true
  end
end
