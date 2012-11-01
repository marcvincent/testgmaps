class AddIndexToGaddName < ActiveRecord::Migration
 def change
    add_index :gadds, :name, unique: true
  end
end
