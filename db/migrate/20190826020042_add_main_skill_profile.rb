class AddMainSkillProfile < ActiveRecord::Migration[5.2]
  def change
    add_reference :profiles, :main_skill, foreign_key: true
  end
end
