class RemoveUserIdFromSignatures < ActiveRecord::Migration
	def change
		remove_column :signatures, :user_id, :references
	end
end
