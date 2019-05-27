class RenameColumnWoods < ActiveRecord::Migration[5.2]
  def change
    rename_column :woods, :desity, :density
  end
end
