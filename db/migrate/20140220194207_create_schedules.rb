class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.belongs_to :departure_city, class_name: "City", foreign_key: "departure_city"
      t.belongs_to :arrival_city, class_name: "City", foreign_key: "arrival_city"
      
      t.time :departure_time
      #t.string :days

      t.timestamps
    end
    
    add_index :schedules, [:departure_city_id, :arrival_city_id, :departure_time], unique: true, name: "schedules_unique"
  end
end
