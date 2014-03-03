class CreateBusesSchedules < ActiveRecord::Migration
  def change
    create_table :buses_schedules do |t|
      t.belongs_to :bus
      t.belongs_to :schedule
    end
    
    add_index :buses_schedules, [:bus, :schedule], unique: true
  end
end
