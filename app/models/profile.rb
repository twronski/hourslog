class Profile < ApplicationRecord
  enum role: %i(engineer ct pm team_leader ge_team_leader admin pmo)
  belongs_to :user
  belongs_to :main_kill
end
