class AddReviewerToEvaluation < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluations, :reviewer_id, :bigint
    add_foreign_key :evaluations, :profiles, column: :reviewer_id  
  end
end
