class Activity < ApplicationRecord
    has_many :hours_records, dependent: :destroy
    validates :name, presence: true
    validates :name, uniqueness: true    

end
