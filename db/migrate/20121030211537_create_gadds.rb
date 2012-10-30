class CreateGadds < ActiveRecord::Migration
  def change
    create_table :gadds do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :user_id

      t.timestamps
    end
  end
end
