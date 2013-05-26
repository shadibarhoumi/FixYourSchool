class CreatePetitions < ActiveRecord::Migration
  def change
    create_table :petitions do |t|
      t.references :school
      t.references :user
      t.text :description
      t.integer :goal
      t.string :title

      t.timestamps
    end
    add_index :petitions, :school_id
  end
end
