require 'test_helper'

class EmployersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
  	get employers_url
  	assert_response :success
  end

  test "should get new" do
  	get new_employer_path
  	assert_response :success
	end

  test "should create employer" do
    assert_difference('Employer.count') do
      post employers_url, params: { employer: { company_name: "DummyCompany" } }
    end

    assert_redirected_to employers_url
  end

	test "should not create invalid employer" do
    assert_difference('Employer.count', 0) do
      post employers_url, params: { employer: { name: "DummyCompany" } }
    end

    assert_response :success
  end
end
