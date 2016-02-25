require 'test_helper'

class UserApiKeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  #slutat att funka efter jag ändrat i fixtures 
  test "test 1 - ska inte spara utan apikey" do
    a = UserApiKey.new
    
    assert_not a.save
  end
  
end
