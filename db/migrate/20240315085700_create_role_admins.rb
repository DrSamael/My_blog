class CreateRoleAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :role_admins do |t|
      t.references :role, null: false, foreign_key: true
      t.references :admin_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
