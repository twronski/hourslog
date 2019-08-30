class HoursRecord < ApplicationRecord
  include ActiveModel::Validations
  
  enum status: %i(rep_under_analysis rep_under_revision rep_aut_approved rep_approved rep_aut_rejected rep_rejected)
  belongs_to :activity
  belongs_to :project
  belongs_to :user
  belongs_to :bay
  belongs_to :voltage_level
  belongs_to :improductive_reason, optional: true
  belongs_to :main_skill
  has_many :comments, as: :commentable
  has_one_attached :record_doc

  validates_presence_of :man_hour, message: "Não poe ser vazio"
  validates :day, presence: true, creation_date: true
  validates :man_hour, presence: true, limit_man_hour: true
  validates_with WorkWeekValidator
  

  before_create do
    self.status = "rep_under_analysis"
    self.number_of_revisions = 0
    self.action_deadline = Date.today + CONFIG[:time_for_first_review_days]
  end

  def set_under_analisys
    self.status = "rep_under_analysis"
    self.action_deadline = Date.today + CONFIG[:time_for_review_days]
    self.save
  end

  def set_under_revision
    self.status = "rep_under_revision"
    self.number_of_revisions += 1
    self.action_deadline = Date.today + CONFIG[:time_for_review_days]    
    self.save
  end

  def set_approved
    self.status = "rep_approved"
    self.save
    # if self.errors.any?
    #   logger.debug "Error message: #{self.errors.messages}"
    # end
  end

def set_rejected
    self.status = "rep_rejected"
    self.save
  end

  def perform_aut_action
    if self.status == "rep_under_analysis"
      self.status = "rep_aut_approved"
    else
      self.status = "rep_aut_rejected"
    end
    self.save
  end

  def is_last_revision?
    self.number_of_revisions == CONFIG[:max_number_reviews]
  end
  
    
end
