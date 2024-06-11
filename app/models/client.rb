class Client < User
  validates :company_name, presence: true
end
