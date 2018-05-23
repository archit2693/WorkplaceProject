class EmployersController < ApplicationController
	
	def index
		@employers = Employer.all
	end

	def new
	end

	def create
		@employer = Employer.new(employer_params)
		if @employer.save
			redirect_to employers_path
		else
			render_plain "Failed"
		end
	end

	private
		def employer_params
			params.fetch(:employer).permit(:company_name)
		end
end
