class AddTitleToComics < ActiveRecord::Migration
  def change
  	change_table :comics do |t|
  		t.string :title
  	end
  end
end
