class User < ApplicationRecord
  validates :username, presence: true, 
                       uniqueness: { case_sensitive: false }
  
  EMAIL_REGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/

  validates :email, presence: true, 
                    uniqueness: { case_sensitive: false }, 
                    format: { with: EMAIL_REGEX}





end