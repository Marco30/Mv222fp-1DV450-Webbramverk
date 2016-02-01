class Admin < ActiveRecord::Base
    
  #before_save { self.name = name.downcase }
    
  validates :name, presence: true #Validering så att namn inte är tom
  has_secure_password# validering av lösenord 
    
end
