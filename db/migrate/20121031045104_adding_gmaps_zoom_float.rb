class AddingGmapsZoomFloat < ActiveRecord::Migration
 def change
    add_column :gadds, :gmaps_zoom, :float
  end
end
