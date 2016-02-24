class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.string   :username
    t.string   :email
    t.string   :password_digest
    
    t.timestamps null: false
  end
  
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true
    
  end
end
