class AddIndexAndColumns < ActiveRecord::Migration
  def change
  	add_index :comic_pages, :id, index: true
  end

  def down
  end
end
