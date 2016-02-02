class ApiUser < ActiveRecord::Base
  
 has_one :user_api_key, dependent: :destroy # ger en dubbelriktad association, om en avändare tasbort så tas henns api key bort också
  
  before_save { self.email = email.downcase } # gör så att email blir lowercase (små bokstäverr) 
  # before_save gör det möjligt att ändra värdet innan det sparars till databasen 
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  validates :email, presence: {message: "textbox is empty, enter your email!!!"} , format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
 # eamil validering, Kontrolärar att in datan är en en email och att den inte är tom 
 #:presence => {:message => "You need to have an e-mail!!!"}
 
  validates :password, length: {minimum: 6, message: "Password must be more than 8 characters!!!"}
  has_secure_password
  # validering, Kontrolärar att lösenordet man valt är minst 6 täken lång 

  
end
