class CreateBusesSchedules < ActiveRecord::Migration
  def change
    create_table :buses_schedules do |t|
      t.belongs_to :bus
      t.belongs_to :schedule
    end
  end
end
