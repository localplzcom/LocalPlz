class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  has_secure_password
  before_save :create_remember_token
  
  valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, presence: true, format: { with: valid_email_regex }, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  
  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
