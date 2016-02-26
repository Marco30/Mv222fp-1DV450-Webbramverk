class User < ActiveRecord::Base
    
    has_many :places, :dependent => :destroy
  
  
   has_secure_password
  
  def serializable_hash (options={})
    options = {
      only: [:username, :id],
      include: [:places],
    }.update(options)
    super(options)
  end
  

  
 
  
end
