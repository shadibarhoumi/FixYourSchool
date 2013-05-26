class AddLikesToSignatures < ActiveRecord::Migration
  def change
    add_column :signatures, :likes, :integer
  end
end
