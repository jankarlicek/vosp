class CreateAtachFiles < ActiveRecord::Migration
  def change
    create_table :atach_files do |t|
      t.belongs_to	:route
      t.belongs_to	:node
      t.string 	:url_file, :limit => 2083

      t.timestamps
    end
  end
end

