class CreateLops < ActiveRecord::Migration
  def change
  [:lops, :lop_drafts].each do |table_name|
  create_table table_name, :force => true do |t|
      t.references :lop if table_name == :lop_drafts
      t.string :name
      t.text :description
    end
  
  end
    
  end
end

