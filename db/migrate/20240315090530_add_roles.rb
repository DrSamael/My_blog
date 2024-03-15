class MigrationRole < ActiveRecord::Base
  self.table_name = :roles
end

class AddRoles < ActiveRecord::Migration[6.1]
  def up
    MigrationRole.create(name: 'ROLE_SUPER_ADMIN')
    MigrationRole.create(name: 'ROLE_EMPLOYER_ADMIN')
  end

  def down
    MigrationRole.where(name: %w[ROLE_SUPER_ADMIN ROLE_EMPLOYER_ADMIN]).delete_all
  end
end
