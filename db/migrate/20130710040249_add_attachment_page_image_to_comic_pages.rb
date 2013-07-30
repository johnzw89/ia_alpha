class AddAttachmentPageImageToComicPages < ActiveRecord::Migration
  def self.up
    change_table :comic_pages do |t|
      t.attachment :page_image
    end
  end

  def self.down
    drop_attached_file :comic_pages, :page_image
  end
end
