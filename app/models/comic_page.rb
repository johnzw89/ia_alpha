class ComicPage < ActiveRecord::Base
  attr_accessible :page_image
  has_attached_file :page_image, styles: { medium: "1024x768>",  thumb: "320x200>", grid: "120x80>" }

  validates :page_image, presence: true
  
  belongs_to :comic
  
end