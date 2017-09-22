class AddEmployeeIdToCheckIns < ActiveRecord::Migration[5.0]
  def change
    add_reference :check_ins, :employee, foreign_key: true
  end
end
