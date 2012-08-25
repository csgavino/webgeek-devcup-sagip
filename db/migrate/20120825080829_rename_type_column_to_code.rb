class RenameTypeColumnToCode < ActiveRecord::Migration
  def up
    rename_column :supplies, :type, :code
  end

  def down
  end
end
