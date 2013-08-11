class AddComicPageIdtoComics < ActiveRecord::Migration
  def change
  	change_table :comic_pages do |t|
  		t.integer :comic_id
  		t.index :comic_id 
  	end
  end
end
