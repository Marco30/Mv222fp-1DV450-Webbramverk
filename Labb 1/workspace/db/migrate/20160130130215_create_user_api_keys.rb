class CreateUserApiKeys < ActiveRecord::Migration
  def change
    create_table :user_api_keys do |t|

      t.string :value
      t.belongs_to :api_user, index: true
      # "BELONGS_TO" ger en dubbelriktad association
      #Det innebär att user_api_keys tabel kan få tabel data från api_user och api_user tabel can få tabel data från user_api_keys

      t.timestamps null: false
    end
  end
end
