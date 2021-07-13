# email: string
# password_digest: string

# password: string virtual
# password_confirmation: string cirtual

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid email address" }
  validates :email, length: { minimum: 4, maximum: 50 }
                
end

