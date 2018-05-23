require 'test_helper'

class EmployerTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should be invalid without company name" do
 		employers(:one).company_name = nil
 		assert_equal false, employers(:one).valid?
 	end

 	test "company name should be a string" do
		assert_equal true, employers(:one).company_name.is_a?(String)
	end

	test "should update employer rating" do
		employers(:one).average_rating = 4.0
		employers(:one).employees.new({name: "test", position: "intern", rating: 5.0})
		assert_equal 4.5, employers(:one).update_rating
	end

	test "should set employer average_rating to zero if no employees" do
		employers(:two).average_rating = 4.0
		employers(:two).number_of_employees_rated = 0
		assert_equal 0.0, employers(:two).update_rating
	end
end
