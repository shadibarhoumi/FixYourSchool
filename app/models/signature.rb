class Signature < ActiveRecord::Base
  belongs_to :petition
  attr_accessible :reason, :first_name, :last_name, :email, :attends_school

  def name
  	"#{self.first_name} #{self.last_name}"
  end
end
