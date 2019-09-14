class CreateSuggestionBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestion_boxes do |t|
      t.string :name
      t.text :description
      t.integer :status

      t.timestamps
    end
  end
end
