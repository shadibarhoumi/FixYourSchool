class Address < ActiveRecord::Base
  attr_accessible :city, :state, :zipcode

  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true
end
