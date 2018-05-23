class EmployeesController < ApplicationController
	before_action :set_employer
  before_action :set_employee, only: [:edit, :update, :destroy]
  
	def new
		@employee = @employer.employees.new
	end

	private
    
    # def set_employee
    #   @employee = @employer.employees.find(params[:id])
    # end

    def set_employer
      @employer = Employer.find(params[:employer_id])
    end
    
    # def employee_params
    #   params.require(:employee).permit(:name, :position, :rating)
    # end
end
