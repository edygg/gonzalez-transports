class CreateTravelPackages < ActiveRecord::Migration
  def change
    create_table :travel_packages do |t|
      t.belongs_to :package_type
      t.belongs_to :schedule
      
      t.float :price
      
      t.timestamps
    end
  end
end
