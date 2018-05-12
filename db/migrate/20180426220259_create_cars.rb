class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :marca
      t.string :modelo
      t.string :color
      t.integer :hp

      t.timestamps
    end
  end
end
