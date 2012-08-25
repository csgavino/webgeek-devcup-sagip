class AddCacheCounterToShelters < ActiveRecord::Migration
  def change
    add_column :shelters, :victims_count, :integer, :default => 0
  end
end
