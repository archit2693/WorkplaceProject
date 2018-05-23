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

  test "should show employees on show method" do
  	get employer_path(employers(:one))
  	assert_response :success
  end

  test "should delete employer on destroy" do
  	employer = employers(:one)
    assert_difference('Employer.count', -1) do
      delete employer_path(employer)
    end

    assert_redirected_to employers_url
  end

end
