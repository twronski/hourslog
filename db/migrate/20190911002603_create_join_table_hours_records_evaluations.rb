class CreateJoinTableHoursRecordsEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_join_table :hours_records, :evaluations do |t|
       t.index [:hours_record_id, :evaluation_id], name: "index_hr_ev"
       t.index [:evaluation_id, :hours_record_id], name: "index_ev_hr"
    end
  end
end
