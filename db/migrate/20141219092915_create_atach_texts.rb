class CreateAtachTexts < ActiveRecord::Migration
  def change
    create_table :atach_texts do |t|
      t.belongs_to	:route
      t.belongs_to	:node
      t.text 	:import_text
      
      t.timestamps
    end
  end
end
