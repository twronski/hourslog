class CreateBays < ActiveRecord::Migration[5.2]
  def change
    create_table :bays do |t|
      t.string :name

      t.timestamps
    end
  end
end
