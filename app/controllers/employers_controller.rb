class EmployersController < ApplicationController
	
	def index
		@employers = Employer.all
	end

	def show
		@employer = Employer.find(params[:id])
	end

	def new
	end

	def create
		@employer = Employer.new(employer_params)
		if @employer.save
			redirect_to employers_path
		else
			render :new, notice: "Failed to save the employer."
		end
	end

	def destroy
		@employer = Employer.find(params[:id])
		@employer.destroy
		redirect_to employers_url, notice: 'Employer was successfully destroyed.'
	end

	private
		def employer_params
			params.fetch(:employer).permit(:company_name)
		end
end
