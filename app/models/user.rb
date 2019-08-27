class User < ApplicationRecord
  has_one :profile
  has_many :projects_ct, class_name: "Project", foreign_key: "ct_id"
  has_many :projects_pm, class_name: "Project", foreign_key: "pm_id"
  has_many :hours_records

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable,
         :recoverable, :rememberable
end
