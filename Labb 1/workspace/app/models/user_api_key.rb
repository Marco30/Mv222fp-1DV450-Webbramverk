class UserApiKey < ActiveRecord::Base
    
  #belongs_to :api_user
  
 # before_create :generate_new_value
  
  #validates :value, uniqueness: true

  #def generate_new_value
    
    #begin
     # self.value = SecureRandom.hex
    #end while self.class.exists?(value: value)
    
end
