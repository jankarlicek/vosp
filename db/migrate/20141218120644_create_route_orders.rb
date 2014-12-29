class CreateRouteOrders < ActiveRecord::Migration
  def change
    create_table :route_orders do |t|
      t.integer	:route_order
      t.belongs_to	:coordinate
      t.belongs_to	:route

      t.timestamps
    end
  end
end
