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
end
