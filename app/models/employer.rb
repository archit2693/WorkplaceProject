class Employer < ApplicationRecord
	validates :company_name, presence: true
	has_many :employees, dependent: :destroy

	def update_rating
		sum = 0.0
		count = 0
		self.employees.each do |employee|
			count += 1
			sum += employee.rating
		end
		if(count != 0)
			average = sum / count
			self.average_rating = average
		else
			self.average_rating = 0.0
		end
		self.number_of_employees_rated = count
		self.average_rating
	end

end
