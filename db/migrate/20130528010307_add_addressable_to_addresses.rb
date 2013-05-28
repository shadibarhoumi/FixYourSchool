class AddAddressableToAddresses < ActiveRecord::Migration
  def change
  	change_table :addresses do |t|
  		t.integer :addressable_id
  		t.string :addressable_type
  	end
  end
end
