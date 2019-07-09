class CreateImproductiveReasons < ActiveRecord::Migration[5.2]
  def change
    create_table :improductive_reasons do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
