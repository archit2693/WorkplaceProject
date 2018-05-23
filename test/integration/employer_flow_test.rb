require 'test_helper'

class EmployerFlowTest < ActionDispatch::IntegrationTest

	test "should go to employer index page when at home" do
 	 	get "/"
  	assert_select "h1", "Companies names"
	end

	test "should be able to create new employer" do
		get new_employer_path
		assert_response :success

		post employers_path, params: { employer: { company_name: "TestCompany" } }
		assert_response :redirect
		follow_redirect!
		assert_response :success
		assert_select "td", "TestCompany"
	end	

end
