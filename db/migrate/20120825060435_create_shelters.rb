class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :capacity

      t.timestamps
    end
  end
end
