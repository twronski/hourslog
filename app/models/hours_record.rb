class HoursRecord < ApplicationRecord
  include ActiveModel::Validations
  #TODO: Optimize enum
  #TODO: Use prefixes ?
  
  enum status: %i(rep_under_analysis rep_under_revision rep_aut_approved rep_approved rep_aut_rejected rep_rejected)
 
  # Associations
  # TODO: Review Associations

  belongs_to :activity
  belongs_to :project
  belongs_to :profile
  belongs_to :bay
  belongs_to :voltage_level
  belongs_to :improductive_reason, optional: true
  belongs_to :main_skill
  belongs_to :main_equipment
  has_and_belongs_to_many :evaluations

  has_many :comments, as: :commentable

  # Active Storage

  has_one_attached :record_doc

  # Validations 
  # TODO : inproductive - boolean - default to false
  # TODO : change date to datetime on all models. or sue datetime.to_date

  validates_presence_of :man_hour, message: "Não poe ser vazio"
  validates :day, presence: true, creation_date: true
  validates :man_hour, presence: true, limit_man_hour: true
  validates_with WorkWeekValidator
  validates :man_hour, numericality: { greater_than_or_equal_to: 0.0, less_than_or_equal_to: 24.0  }
  validate :date_not_after_today
  
  # TODO: Passar para a migration (done)
  before_create do
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

  private

  def date_not_after_today

    # TODO: Implement and indlude validator
    if (self.day - Date.today)  > 0
      errors.add(:day, "Data nao pode ser futura")
    end
    
  end
    
end
