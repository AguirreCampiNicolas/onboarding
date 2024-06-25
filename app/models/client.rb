class Client < User
  validates :company_name, presence: true
  validates :name, presence: true
end
