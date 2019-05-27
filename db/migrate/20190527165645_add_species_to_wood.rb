class AddSpeciesToWood < ActiveRecord::Migration[5.2]
  def change
    add_column :woods, :species, :string
  end
end
