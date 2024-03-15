class Role < ApplicationRecord
  has_many :role_admins
  has_many :admin_users, through: :role_admins

  validates :name, presence: true
end
