class ImprovementAction < ApplicationRecord
    has_many :votes, as: :votable
    belongs_to :profile
end