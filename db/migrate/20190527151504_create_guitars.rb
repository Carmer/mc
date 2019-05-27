class CreateGuitars < ActiveRecord::Migration[5.2]
  def change
    create_table :guitars do |t|
      t.string :serial
      t.string :model
      t.string :body_wood
      t.string :neck_wood
      t.string :fingerboard
      t.string :neck_shape
      t.string :scale_length
      t.string :nut_width
      t.string :nut_material
      t.string :frets
      t.string :fret_count
      t.string :inlays
      t.string :inlay_description
      t.string :hardware
      t.string :bridge
      t.string :tuners
      t.string :controls
      t.string :switch
      t.string :knobs
      t.string :pickups
      t.string :body_finish
      t.string :neck_finish
      t.string :strings
      t.string :case

      t.timestamps
    end
  end
end
