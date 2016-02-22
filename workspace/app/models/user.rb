class User < ActiveRecord::Base
    
  
  has_many :attractions, :dependent => :destroy
  
  
  has_secure_password
  
end
