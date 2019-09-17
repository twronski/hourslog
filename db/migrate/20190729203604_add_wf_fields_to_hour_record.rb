class AddWfFieldsToHourRecord < ActiveRecord::Migration[5.2]
    def change
      add_column :hours_records, :number_of_revisions, :integer, :default => 0
      add_column :hours_records, :action_deadline, :date
    end
end
