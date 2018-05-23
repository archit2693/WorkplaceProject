require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
	setup do
		@employee = employees(:employee_one)
		@employer = employers(:one)
	end

  test "should get new" do
  	get new_employer_employee_path(@employer)
  	assert_response :success
	end

	test "should create employer" do
    assert_difference('Employee.count') do
      post employer_employees_url, params: { employee: { name: "TestName", position: "Intern", rating: 3.0, employer_id: @employee.employer.id } }
    end

    assert_redirected_to employer_url(@employer)
  end

end
