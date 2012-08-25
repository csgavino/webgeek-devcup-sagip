class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.integer :type
      t.integer :quantity
      t.integer :shelter_id

      t.timestamps
    end
  end
end
