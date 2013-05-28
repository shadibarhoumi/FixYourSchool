class School < ActiveRecord::Base
  attr_accessible :name, :address_attributes, :petitions_attributes
  has_many :users
  has_one :address, as: :addressable
  has_many :petitions

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :petitions

  validates :name, presence: true

  def self.search(search)
  	if search
  		find(:all, conditions: ['name LIKE ?', "%#{search}%"])
  	end
  end
end
