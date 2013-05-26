class AddSchoolIdToAddress < ActiveRecord::Migration
  def change
    change_table :addresses do |t|
    	t.references :school
    end
  end
end
