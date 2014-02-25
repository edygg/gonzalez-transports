class CreateBusDrivers < ActiveRecord::Migration
  def change
    create_table :bus_drivers do |t|
      t.belongs_to :bus
      
      t.string :name
      t.date :birth_date
      t.float :salary
      t.string :gender
      t.string :phone
      t.string :email
        
      t.timestamps
    end
  end
end
