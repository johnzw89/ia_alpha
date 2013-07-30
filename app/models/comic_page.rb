class ComicPage < ActiveRecord::Base
  attr_accessible :page_image
  has_attached_file :page_image, styles: { medium: "320x240>"}
end
