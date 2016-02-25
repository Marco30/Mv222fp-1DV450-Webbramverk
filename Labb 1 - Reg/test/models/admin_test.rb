require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  
 test "test 1 - visar fel om namn finns" do
  t = Admin.new
  
  assert_not t.save
end 


 test "test 2 - visar fel om namn och password inte finns med" do
  t = Admin.new
  
    t.name = "Edwin"
  
  t.password_digest = "$2a$10$e3qbrYX3YtoZtFCwnhCXLeP/VhCvp5gv2k9D38zLVzkzbAkS0Dr.2"
  
  assert t.save
end 

end
