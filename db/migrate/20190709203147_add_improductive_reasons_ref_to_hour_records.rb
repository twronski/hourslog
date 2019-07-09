class AddImproductiveReasonsRefToHourRecords < ActiveRecord::Migration[5.2]
  def change
    add_reference :hours_records, :improductive_reason, foreign_key: true
  end
end
