class Profile < ApplicationRecord
  enum role: %i(engineer ct pm team_leader ge_team_leader admin)
  belongs_to :user
end
