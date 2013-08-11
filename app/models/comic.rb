class Comic < ActiveRecord::Base
  attr_accessible :synopsis

  belongs_to :comic_title
  has_many :comic_pages
end
