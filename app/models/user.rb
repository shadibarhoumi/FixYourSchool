class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :address_attributes
  
  validates_uniqueness_of :email
  # validate email format

  has_one :school
  has_one :address, as: :addressable
  has_many :signatures
  accepts_nested_attributes_for :address
  def name
  	"#{first_name} #{last_name}"
  end
end
