class AddTitleToComicTitle < ActiveRecord::Migration
  def change
  	change_table :comic_titles do |t|
  		t.string :title
  	end
  end
end
