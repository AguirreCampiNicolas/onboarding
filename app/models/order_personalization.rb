class OrderPersonalization < ApplicationRecord
  belongs_to :order
  belongs_to :personalization
end
