class Schedule < ActiveRecord::Base
  has_and_belongs_to_many :buses
  belongs_to :departure_city, class_name: "City", foreign_key: "departure_city_id"
  belongs_to :arrival_city, class_name: "City", foreign_key: "arrival_city_id"
  has_one :travel_package
end
