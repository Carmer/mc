class CreateWoods < ActiveRecord::Migration[5.2]
  def change
    create_table :woods do |t|
      t.string :species
      t.string :origin
      t.string :grade
      t.string :density
      t.string :speed_of_sound
      t.string :modulus_of_elasticity
      t.string :radiation_coefficient

      t.timestamps
    end
  end
end
