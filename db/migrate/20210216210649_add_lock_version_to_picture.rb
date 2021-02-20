class AddLockVersionToPicture < ActiveRecord::Migration[6.1]
  def change
    add_column :pictures, :lock_version, :integer
  end
end
