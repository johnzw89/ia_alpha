class CreateComicPages < ActiveRecord::Migration
  def change
    create_table :comic_pages do |t|

      t.timestamps
    end
  end
end
