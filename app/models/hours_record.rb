class HoursRecord < ApplicationRecord
  enum status: %i(rep_new rep_under_analysis rep_under_revision rep_aut_approved rep_approved rep_aut_rejected rep_rejected)
  belongs_to :activity
  belongs_to :project
  belongs_to :user
  belongs_to :bay
  belongs_to :voltage_level
  belongs_to :improductive_reason
  has_many :comments, as: :commentable

  after_create :set_report_status

  private

    def set_report_status
      self.status = "rep_new"
    end
    
end
