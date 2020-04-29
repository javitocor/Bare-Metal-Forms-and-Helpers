class User < ApplicationRecord
  before_save { email.downcase! }
  validates :username, presence: true, length: { maximum: 30 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 3, maximum: 15 }
  
end
