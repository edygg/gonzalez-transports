class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :trademark
      t.string :model
      t.integer :capacity

      t.timestamps
    end
  end
end
