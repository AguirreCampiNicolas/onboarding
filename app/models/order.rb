class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :delivery_addresses, dependent: :destroy
  has_many :order_personalizations, dependent: :destroy
  has_many :personalizations, through: :order_personalizations

  accepts_nested_attributes_for :order_personalizations, allow_destroy: true
  accepts_nested_attributes_for :delivery_addresses, allow_destroy: true
end
