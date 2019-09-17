class AccessTemplateProfile < ApplicationRecord
  belongs_to :access_template
  belongs_to :profile
end
