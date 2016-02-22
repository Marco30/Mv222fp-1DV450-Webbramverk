class Tag < ActiveRecord::Base
    
    before_save { self.name = name.downcase }
 
  
  has_and_belongs_to_many :places
  
  validates :name,
            presence: true,
            uniqueness: { case_sensitive: false }
  

  
end
