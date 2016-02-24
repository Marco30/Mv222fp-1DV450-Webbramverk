# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tag.delete_all
t1 = Tag.create(:name => "Stockholm")
t2 = Tag.create(:name => "London")
t3 = Tag.create(:name => "USA")
t4 = Tag.create(:name => "Sverige")

User.delete_all
u1 = User.create(:username => "User1", :email => "email@email.com", :password => "123", :password_confirmation => "123")
u2 = User.create(:username => "User2", :email => "epost@epost.com", :password => "123", :password_confirmation => "123")

ApiKey.delete_all
au1 = ApiKey.create(:user_id => u1.id)
au2 = ApiKey.create(:user_id => u2.id)

Place.delete_all
a1 = Place.create(:address => "Stadshus", :user_id => u1.id, :latitude => 59.327451, :longitude => 18.054346)
a2 = Place.create(:address => "Globen", :user_id => u1.id, :latitude => 59.2935725, :longitude => 18.0835501)
a3 = Place.create(:address => "Big Ben", :user_id => u2.id, :latitude =>  51.5006248, :longitude => -0.1246239)
a4 = Place.create(:address => "Statue of Liberty", :user_id => u2.id, :latitude => 40.6892494, :longitude => -74.04450039999999)

t1.places << a1
t3.places << a4
t1.places << a2
t2.places << a3
t4.places << a2
t4.places << a1