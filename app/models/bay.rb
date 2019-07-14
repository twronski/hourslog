class Bay < ApplicationRecord
    has_many :hours_records, dependent: :destroy

end
