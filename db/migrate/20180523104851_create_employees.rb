class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
    	t.string :name
    	t.string :position
    	t.float :rating
      t.timestamps
    end
  end
end
