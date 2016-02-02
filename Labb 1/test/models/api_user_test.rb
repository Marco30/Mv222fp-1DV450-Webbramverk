require 'test_helper'

class ApiUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
#slutat att funka 
    test "test 1 - ska inte spara utan email" do
    t = ApiUser.new
    t.email = ""
    assert_not t.save
  end


  test " test 2 - tar man bort användar så ska api tas bort också" do
    assert_difference('UserApiKey.count', difference = -1) do
      u = ApiUser.find(1)
      u.destroy
    end
  end
  
end
