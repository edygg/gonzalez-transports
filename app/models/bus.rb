class Bus < ActiveRecord::Base
  has_one :bus_driver
  has_one :assistant
  has_and_belongs_to_many :schedules
end
