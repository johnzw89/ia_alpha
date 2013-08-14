class AddAttachmentCoverPageToComicTitles < ActiveRecord::Migration
  def self.up
    change_table :comic_titles do |t|
      t.attachment :cover_page
    end
  end

  def self.down
    drop_attached_file :comic_titles, :cover_page
  end
end
