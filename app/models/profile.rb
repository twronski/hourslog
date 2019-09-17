class Profile < ApplicationRecord
  enum role: %i(engineer ct pm team_leader ge_team_leader admin pmo)
  belongs_to :user
  belongs_to :main_skill
  belongs_to :company
  has_many :projects_ct, class_name: "Project", foreign_key: "ct_id"
  has_many :projects_pm, class_name: "Project", foreign_key: "pm_id"
  has_many :hours_records
  has_many :suggestion_boxes
  has_many :improvement_actions
end
