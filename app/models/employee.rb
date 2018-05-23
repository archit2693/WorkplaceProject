class Employee < ApplicationRecord
	validates :name, :position, :rating, presence: true
	belongs_to :employer
end
