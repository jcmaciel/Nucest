class CreateRolesUsers < ActiveRecord::Migration
  def self.up
    create_table "roles_users", :id => false, :force => true do |t|
      t.integer  "user_id"
      t.integer  "role_id"
      t.timestamps
    end

    User.find_by_username("geral").has_role! :normal
    User.find_by_username("admin").has_role! :admin
  end

  def self.down
    drop_table :roles_users
  end
end

