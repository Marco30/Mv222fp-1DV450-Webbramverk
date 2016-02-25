# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin.delete_all
ad1 = Admin.create(:name => "marco", :password => "admin123", :password_confirmation => "admin123")

ApiUser.delete_all
u1 = ApiUser.create(:email => "ghost@hotmail.com", :password => "test123", :password_confirmation => "test123")
u2 = ApiUser.create(:email => "marco.villegas@live.se", :password => "test123", :password_confirmation => "test123")


UserApiKey.delete_all
ak1 = UserApiKey.create(:api_user_id=>u1.id)
ak2 = UserApiKey.create(:api_user_id=>u2.id)
ak3 = UserApiKey.create(:api_user_id=>u2.id)





