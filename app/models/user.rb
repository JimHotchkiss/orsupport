class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true
  validates :email, :uniqueness => true

  has_many :issues
  has_many :comments
end
