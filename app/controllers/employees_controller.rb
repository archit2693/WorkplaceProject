class EmployeesController < ApplicationController
	before_action :set_employer
  before_action :set_employee, only: [:edit, :update, :destroy]
  
	def new
		@employee = @employer.employees.new
	end

	def create 
		@employee = @employer.employees.new(employee_params)
		if @employee.save
			redirect_to employer_path(@employer)
		else
			render :new, notice: "Failed to add employee."
		end
	end

	def destroy
		@employee.destroy
		redirect_to employer_path(@employer)
	end

	def edit
	end

	def update
		if @employee.update(employee_params)
			redirect_to employer_path(@employer)
		else
			render "edit", notice: "Could not edit the employee"
		end
	end

	private
    
    def set_employee
      @employee = @employer.employees.find(params[:id])
    end

    def set_employer
      @employer = Employer.find(params[:employer_id])
    end
    
    def employee_params
      params.require(:employee).permit(:name, :position, :rating)
    end
end
