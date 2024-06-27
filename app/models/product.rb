class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :personalizations, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :rate, presence: true, inclusion: { in: 0..5 }

  accepts_nested_attributes_for :personalizations, allow_destroy: true
end
