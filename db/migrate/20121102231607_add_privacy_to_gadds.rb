class AddPrivacyToGadds < ActiveRecord::Migration
  def change
    add_column :gadds, :privacy, :string
  end
end
