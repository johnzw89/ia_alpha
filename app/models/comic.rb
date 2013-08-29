class Comic < ActiveRecord::Base
  attr_accessible :synopsis, :title

  belongs_to :comic_title
  has_many :comic_pages

  validates :title, presence: true

  accepts_nested_attributes_for :comic_pages
end
