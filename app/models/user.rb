class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :name, :password, :password_confirmation
  
  validates_uniqueness_of :email
  # validate email format

  has_one :school
  has_many :signatures
end
