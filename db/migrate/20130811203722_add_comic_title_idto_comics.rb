class AddComicTitleIdtoComics < ActiveRecord::Migration
  def change
  	change_table :comics do |t|
  		t.integer :comic_title_id
  	end
  end
end
