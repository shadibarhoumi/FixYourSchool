class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.references :user
      t.references :petition
      t.text :reason

      t.timestamps
    end
    add_index :signatures, :user_id
    add_index :signatures, :petition_id
  end
end
