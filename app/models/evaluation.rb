class Evaluation < ApplicationRecord
  belongs_to :reviewer, class_name: "Profile", foreign_key: "profile_id"
  has_and_belongs_to_many :hours_records
end
