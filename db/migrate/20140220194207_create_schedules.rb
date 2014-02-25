class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.belongs_to :departure_city, class_name: "City", foreign_key: "departure_city"
      t.belongs_to :arrival_city, class_name: "City", foreign_key: "arrival_city"
      
      t.time :departure_time
      t.string :days

      t.timestamps
    end
  end
end
