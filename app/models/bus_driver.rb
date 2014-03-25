class BusDriver < ActiveRecord::Base
  belongs_to :bus
  attr_accessible :bus_id, :name, :birth_date, :salary, :gender, :phone, :email
end
