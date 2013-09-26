class ComicPage < ActiveRecord::Base
  attr_accessible :page_image, :page_number
  has_attached_file :page_image, styles: { medium: "1024x768>",  thumb: "320x200>", grid: "120x80>" }

  validates :page_image, presence: true
  validates :page_number, presence: true
  validates_uniqueness_of :page_number, scope: :comic_id
  
  belongs_to :comic
  
end