class CreateComicTitles < ActiveRecord::Migration
  def change
    create_table :comic_titles do |t|
    	t.string :synopsis
    	t.string :user_id
    	t.timestamps
    end
    add_index :comic_titles, :id, index: true
    add_index :comic_titles, :created_at, index: true
  end
end
