class Student < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximun: 50}
  before_save {self.email = email.downcase}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
          presence: true,
            length: {maximum: 105},
        uniqueness: {case_sensitive: false},
            format: {with: VALID_EMAIL_REGEX}
  has_secure_password  
end