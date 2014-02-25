class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.belongs_to :customer
      t.belongs_to :travel_package
      
      t.date :departure_date
      t.date :arrival_date
      
      t.timestamps
    end
  end
end
