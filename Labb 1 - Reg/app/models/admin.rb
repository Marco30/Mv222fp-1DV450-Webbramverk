class Admin < ActiveRecord::Base
    
 before_save { self.name = name.downcase }# gör så att namn blir lowercase (små bokstäverr) 
     # before_save gör det möjligt att ändra värdet innan det sparars till databasen 
     
  validates :name, presence: true #Validering så att namn inte är tom
  has_secure_password# validering av lösenord 
    
end
