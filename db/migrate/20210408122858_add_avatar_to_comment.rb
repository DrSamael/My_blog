class AddAvatarToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :avatar, :string
  end
end
