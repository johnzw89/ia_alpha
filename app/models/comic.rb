class Comic < ActiveRecord::Base
  attr_accessible :synopsis, :title

  belongs_to :comic_title
  has_many :comic_pages
end
