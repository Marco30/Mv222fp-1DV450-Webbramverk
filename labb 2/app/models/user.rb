class User < ActiveRecord::Base
    
    has_many :attractions, :dependent => :destroy
  
include Rails.application.routes.url_helpers 
  
   has_secure_password
  
  def serializable_hash (options={})
    options = {
      only: [:username, :id],
      include: [:attractions],
      methods: [:self_link]
    }.update(options)
    super(options)
  end
  
  def self_link
    { :self => "#{Rails.configuration.baseurl}#{user_path(self)}" }
  end
  
 
  
end
