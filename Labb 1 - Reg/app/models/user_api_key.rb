class UserApiKey < ActiveRecord::Base
    
  belongs_to :api_user #ger en dubbelriktad association
  
 before_create :generate_new_value # skapar ett värde 
  # before_create gör det möjligt att gänerera ett värde innan det skapas i databasen
  
  validates :value, uniqueness: true # validerar att apikey är unikt 

  def generate_new_value # skapar den unika api key
    begin
     self.value = SecureRandom.hex
    end while self.class.exists?(value: value)
  end

end
