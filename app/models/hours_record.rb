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

    def check_creation_criteria
      
      if self.day + 14 > DateTime.now
        'ok'
      else
        'nok'
      end
            
      if self.man_hour < 11.0
        'ok'
      else
        'nok'
      end

    end

    def available_hours
      user_day_records = HoursRecord.where("day = ? AND self.user = ?", self.day, current_user.id)
      # day approved
      # week approved
      # day limit (can be extended with extra hours approved by PM)
      # week limit (can be extended with extra hours approved by PM)
      # available min(week_limit - week_approved, day_limit - day_approved)
    end
    
    
end
