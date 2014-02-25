class Ticket < ActiveRecord::Base
  belongs_to :travel_package
  belongs_to :customer
end
