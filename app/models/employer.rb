class Employer < ApplicationRecord
	validates :company_name, presence: true
	has_many :employees, dependent: :destroy
end
