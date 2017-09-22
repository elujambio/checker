class AddEmployeeIdToCheckOut < ActiveRecord::Migration[5.0]
  def change
    add_reference :check_outs, :employee, foreign_key: true
  end
end
