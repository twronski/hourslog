class Evaluation < ApplicationRecord
  belongs_to :reviewer, class_name: "Profile", foreign_key: "profile_id"
  has_many :evaluations_hours_records
  has_many :hoursrecords, through: :evaluations_hours_records
end
