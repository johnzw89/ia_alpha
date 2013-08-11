class AddTitleToComicPages < ActiveRecord::Migration
  def change
  	change_table :comic_pages do |t|
  		t.integer :page_number
  		t.index :page_number
  	end
  end
end
