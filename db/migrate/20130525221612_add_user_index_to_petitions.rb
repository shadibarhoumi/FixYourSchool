class AddUserIndexToPetitions < ActiveRecord::Migration
  def change
  	add_index :petitions, :user_id
  end
end
