class AdminUser < ApplicationRecord
  has_many :role_admins, dependent: :destroy
  has_many :roles, through: :role_admins, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
end
