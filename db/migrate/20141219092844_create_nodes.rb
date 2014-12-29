class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string	:label
      t.belongs_to	:coordinate

      t.timestamps
    end
  end
end
