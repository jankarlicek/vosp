class CreateCoordinatesRoutes < ActiveRecord::Migration
  def change
    create_table :coordinates_routes, :id => false do |t|

    t.integer	:coordinate_order
    t.references	:coordinate
    t.references	:route

    end
  end

  def self.down
  	drop_table :coordinates_routes
  end
end