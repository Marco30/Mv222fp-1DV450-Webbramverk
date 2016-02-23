class ApiKey < ActiveRecord::Base
    
  before_create :generate_api_key
  
  validates :apikey, uniqueness: true
  
  private
  

  def generate_api_key
    begin
      self.apikey = SecureRandom.hex
    end while self.class.exists?(apikey: apikey)
  end
  
end
