class CreateVictims < ActiveRecord::Migration
  def change
    create_table :victims do |t|
      t.string :name
      t.integer :age
      t.integer :status
      t.text :description
      t.integer :shelter_id

      t.timestamps
    end
  end
end
