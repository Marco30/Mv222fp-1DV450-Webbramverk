class CreateApiUsers < ActiveRecord::Migration
  def change
    create_table :api_users do |t|
      
      #t.references :user_api_key
      
      t.string :email
      t.string :password_digest
      
      t.timestamps null: false
    end
  end
end
