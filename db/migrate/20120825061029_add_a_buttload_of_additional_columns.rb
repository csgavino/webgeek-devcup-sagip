class AddAButtloadOfAdditionalColumns < ActiveRecord::Migration
  def up
    add_column :users, :shelter_id, :integer
    add_column :victims, :user_id, :integer
  end

  def down
  end
end
