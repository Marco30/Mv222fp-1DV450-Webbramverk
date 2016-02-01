class ApiUser < ActiveRecord::Base
  
 has_one :user_api_key, dependent: :destroy # ger en dubbelriktad association, om en avändare tasbort så tas henns api key bort också
  
  #before_save { self.email = email.downcase }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  validates :email, :presence => {:message => "You need to have an e-mail!!!"}, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
 # eamil validering, Kontrolärar att in datan är en en email och att den inte är tom 
  
  validates :password, length: {minimum: 6, message: "Password has to be at least 6 characters long!!!"}
  has_secure_password
  # validering, Kontrolärar att lösenordet man valt är minst 6 täken lång 

  
end
