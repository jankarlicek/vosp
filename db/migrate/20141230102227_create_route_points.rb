class CreateRoutePoints < ActiveRecord::Migration
  def change
    create_table :route_points do |t|
      t.integer :coordinate_id
      t.integer :route_id
      t.integer :point_order

      t.timestamps
    end
  end
end
