class Place < ActiveRecord::Base
    
      
  before_save { self.address = address.downcase }
  
  belongs_to :user
  has_and_belongs_to_many :tags
  
  validates :address, 
            presence: true,
            uniqueness: { case_sensitive: false }
  
  validates :user_id, presence: true

    
end
