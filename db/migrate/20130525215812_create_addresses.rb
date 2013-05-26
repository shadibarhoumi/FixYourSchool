class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.text :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
