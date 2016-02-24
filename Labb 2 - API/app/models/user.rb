class User < ActiveRecord::Base
    
    has_many :places, :dependent => :destroy
  
include Rails.application.routes.url_helpers 
  
   has_secure_password
  
  def serializable_hash (options={})
    options = {
      only: [:username, :id],
      include: [:places],
      methods: [:self_link]
    }.update(options)
    super(options)
  end
  
  def self_link
    { :self => "#{Rails.configuration.baseurl}#{user_path(self)}" }
  end
  
 
  
end
