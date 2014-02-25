class TravelPackage < ActiveRecord::Base
  belongs_to :schedule
  belongs_to :package_type
  has_many :tickets
end
