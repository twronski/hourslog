class Evaluation < ApplicationRecord
  belongs_to :reviewer, class_name: "Profile", foreign_key: "profile_id"
end
