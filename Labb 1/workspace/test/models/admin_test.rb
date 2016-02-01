require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
 test "test 1 - inget namn" do
  t = Admin.new
  t.name = ""
  assert_not t.save
end 
end
