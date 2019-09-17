class AddProfileToSuggestionBox < ActiveRecord::Migration[5.2]
  def change
    add_reference :suggestion_boxes, :profile, foreign_key: true
  end
end
