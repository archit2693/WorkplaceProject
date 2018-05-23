class AddDefaultValuesToEmployersTable < ActiveRecord::Migration[5.2]
  def change
  	change_column :employers, :average_rating, :float, :default => 0.0
  	change_column :employers, :number_of_employees_rated, :integer, :default => 0
  end
end
