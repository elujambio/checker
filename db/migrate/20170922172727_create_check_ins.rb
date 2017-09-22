class CreateCheckIns < ActiveRecord::Migration[5.0]
  def change
    create_table :check_ins do |t|
      t.string :photo,		default: ""
      t.string :lat,		default: ""
      t.string :lng,		default: ""
      
      t.timestamps
    end
  end
end
