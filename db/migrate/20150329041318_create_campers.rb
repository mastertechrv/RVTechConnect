class CreateCampers < ActiveRecord::Migration
  def change
    create_table :campers do |t|
      t.string :model
      t.string :year
      t.string :vin
      t.string :mileage
      t.integer :customer_id
      t.integer :make_id

      t.timestamps
    end
  end
end
