class Client < User
  validates :company_name, presence: true
  validates :name, presence: true
  validates :last_name, presence: true
end
