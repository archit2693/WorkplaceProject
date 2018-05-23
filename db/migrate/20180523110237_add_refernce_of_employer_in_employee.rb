class AddRefernceOfEmployerInEmployee < ActiveRecord::Migration[5.2]
  def change
  	add_reference :employees, :employer, foreign_key: true
  end
end
