class HoursRecord < ApplicationRecord
  enum status: %i(rep_new rep_under_analysis rep_under_revision rep_aut_approved rep_approved rep_aut_rejected rep_rejected)
  belongs_to :activity
  belongs_to :project
  belongs_to :user
  belongs_to :bay
  belongs_to :voltage_level
  belongs_to :improductive_reason, optional: true
  has_many :comments, as: :commentable

  before_create do
    self.status = "rep_under_analysis"
    self.number_of_revisions = 0
    self.action_deadline = Date.today + 7
  end

  def update_wf_status(next_step)
    case next_step
    when "rep_under_revision"
      self.status = "rep_under_revision"
      self.number_of_revisions += 1
      self.action_deadline = Date.today + 3    
    
    when "rep_approved"
      self.status = "rep_approved"
    
    when "rep_rejected"
      self.status = "rep_rejected"
    
    when "rep_aut_approved"
      self.status = "rep_approved"
    
    when "rep_aut_rejected"
      self.status = "rep_rejected"
    end

    self.save
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
