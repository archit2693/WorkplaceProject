require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should be invalid without name" do
 		employees(:employee_one).name = nil
 		assert_equal false, employees(:employee_one).valid?
 	end

	test "should be invalid without postion" do
 		employees(:employee_one).position = nil
 		assert_equal false, employees(:employee_one).valid?
 	end
 	
 	test "should be invalid without rating" do
 		employees(:employee_one).rating = nil
 		assert_equal false, employees(:employee_one).valid?
 	end

 	test "name and position should be a string and rating a float" do
		assert_equal true, employees(:employee_one).name.is_a?(String)
		assert_equal true, employees(:employee_one).position.is_a?(String)
		assert_equal true, employees(:employee_one).rating.is_a?(Float)
	end

end
