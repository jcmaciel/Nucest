 class CreateUsers < ActiveRecord::Migration
   def self.up
     create_table :users do |t|
       t.string :username
       t.string :email
       t.string :crypted_password
       t.string :password_salt
       t.string :persistence_token
       t.integer   :login_count, :null => false, :default => 0
       t.integer   :failed_login_count, :null => false, :default => 0
       t.datetime  :last_request_at
       t.datetime  :current_login_at
       t.datetime  :last_login_at
       t.string    :current_login_ip
       t.string    :last_login_ip
       t.integer :tipo_de_usuario
       t.timestamps
     end
     create_users
   end

   def self.create_users
    User.create! :username => "admin", :password => "admin", :password_confirmation => "admin", :email => "admin@admin.com"
    User.create! :username => "geral", :password => "teste", :password_confirmation => "teste", :email => "agera@admin.com"
  end
   def self.down
     drop_table :users
   end
 end

