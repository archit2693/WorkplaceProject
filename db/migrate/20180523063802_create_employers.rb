class CreateEmployers < ActiveRecord::Migration[5.2]
  def change
    create_table :employers do |t|
    	t.string :company_name
    	t.float :average_rating
    	t.integer :number_of_employees_rated
      t.timestamps
    end
  end
end
