class Address < ActiveRecord::Base
  attr_accessible :city, :state, :zipcode
  # set up polymorphic relationship with addressable models
  # (user and school in this case)
  belongs_to :addressable, polymorphic: true

  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true

  def city_and_state
  	"#{city}, #{state}"
  end
end
