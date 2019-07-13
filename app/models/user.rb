class User < ApplicationRecord
  has_one :profile
  has_many :projects_ct, class_name: "Project", foreign_key: "ct_id"
  has_many :projects_pm, class_name: "Project", foreign_key: "pm_id"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
