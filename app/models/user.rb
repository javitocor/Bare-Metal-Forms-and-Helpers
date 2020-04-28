class User < ApplicationRecord
    validates :username, presence: true, length: {maximum:30 }
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true, length: { minimum:3, maximum:15 }
end
