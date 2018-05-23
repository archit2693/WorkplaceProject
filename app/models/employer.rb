class Employer < ApplicationRecord
	validates :company_name, presence: true
end
