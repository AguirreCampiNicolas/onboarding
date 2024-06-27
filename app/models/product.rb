class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :rate, presence: true, inclusion: { in: 0..5 }
end
