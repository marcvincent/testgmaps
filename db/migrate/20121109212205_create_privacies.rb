class CreatePrivacies < ActiveRecord::Migration
  def change
    create_table :privacies do |t|
      t.string :type

      t.timestamps
    end
  end
end
