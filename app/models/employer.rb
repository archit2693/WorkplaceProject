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
		average = sum / count
		self.average_rating = average
	end

end
