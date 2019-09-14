class AddCollumnsToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :bio, :text
    add_column :profiles, :evaluation_score, :float, :default => 0.0
    #Ex:- :default =>''
    add_column :profiles, :document_score, :float, :default => 0.0
    add_column :profiles, :hours_submission_score, :float, :default => 0.0
    add_column :profiles, :improvement_score, :float, :default => 0.0
    add_column :profiles, :total_score, :float, :default => 0.0
  end
end
