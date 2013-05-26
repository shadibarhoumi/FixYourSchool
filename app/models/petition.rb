class Petition < ActiveRecord::Base
  attr_accessible :description, :goal, :title, :signatures_attributes
  
  has_many :signatures
  has_many :targets

  belongs_to :school
  belongs_to :user

  accepts_nested_attributes_for :user
  accepts_nested_attributes_for :signatures
end
