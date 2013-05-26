class AddAttributesToSignature < ActiveRecord::Migration
  def change
  	change_table :signatures do |t|
  		t.string :first_name
  		t.string :last_name
  		t.string :email
  		t.boolean :attends_school
  	end
  end
end
