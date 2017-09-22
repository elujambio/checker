class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name,         default: ""  
      t.string :last_name,    default: ""
      t.string :middle_name,  default: ""
      t.string :photo,        default: ""
      t.string :number,       default: ""

      t.timestamps
    end
  end
end
