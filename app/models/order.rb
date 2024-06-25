class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :delivery_addresses, dependent: :destroy
  accepts_nested_attributes_for :delivery_addresses, allow_destroy: true
end
