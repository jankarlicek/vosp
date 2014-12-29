class CreateCoordinates < ActiveRecord::Migration
  def change
    create_table :coordinates do |t|
      t.decimal	:coordinate_E
      t.decimal	:coordinate_N
      
      t.timestamps
    end
  end
end
