class RemoveReviewerFromEvaluation < ActiveRecord::Migration[5.2]
  def change
    remove_column :evaluations, :reviewer_id
  end
end
