class User < ApplicationRecord
  before_save { email.downcase! }
  validates :username, presence: true, length: { maximum: 30 }, :on => :create
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true, :on => :create
  has_secure_password
  validates :password, presence: true, length: { minimum: 3, maximum: 15 }, :on => :create
  has_one :user_detail
  has_one_attached :avatar
end
