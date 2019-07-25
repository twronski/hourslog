class HoursRecord < ApplicationRecord
  enum status: %i(new under_analysis under_revision aut_approved approved aut_rejected rejected)
  belongs_to :activity
  belongs_to :project
  belongs_to :user
  belongs_to :bay
  belongs_to :voltage_level
  belongs_to :improductive_reason
end
