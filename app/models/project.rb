class Project < ApplicationRecord
    belongs_to :ct, class_name: "User", foreign_key: "ct_id"
    belongs_to :pm, class_name: "User", foreign_key: "pm_id"

    has_many :hours_records, dependent: :destroy
    validates :name, :wbs, presence: true
    validates :name, :wbs, uniqueness: true    

     
end
