class Place < ActiveRecord::Base
    
      
  before_save { self.address = address.downcase }
  
 geocoded_by :address
 after_validation :geocode, :if => :address_changed?
  
  
  belongs_to :user
  has_and_belongs_to_many :tags



  validates :address, 
            presence: true,
            uniqueness: { case_sensitive: false }
  
  validates :user_id, presence: true
  
  def serializable_hash (options={} )
    options = {
      only: [:address, :latitude, :longitude, :id],
      }.update(options)
    super(options)
  end
    
end
