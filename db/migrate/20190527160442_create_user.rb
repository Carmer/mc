class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :role
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.text :notes
      t.boolean :admin
    end
  end
end
