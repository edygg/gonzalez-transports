class CreateTravelPackages < ActiveRecord::Migration
  def change
    create_table :travel_packages do |t|
      t.belongs_to :package_type
      t.belongs_to :schedule
      
      t.float :price
      
      t.timestamps
    end
    
    add_index :travel_packages, [:package_type_id, :schedule_id], unique: true, name: "package_schedule"
  end
end
