class Service < ApplicationRecord
  has_many :service_users
  has_many :user, through: :service_users
  has_many :products

  validates :name, presence: true
end
