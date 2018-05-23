require 'test_helper'

class EmployersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
  	get employers_url
  	assert_response :success
  end
end
