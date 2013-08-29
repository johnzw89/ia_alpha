class ComicTitle < ActiveRecord::Base
  attr_accessible :synopsis, :title, :cover_page
  has_attached_file :cover_page, styles: { medium: "1024x768>",  thumb: "400x300>" }

  has_many :comics
  belongs_to :user
  validates :user_id, presence: true

  accepts_nested_attributes_for :comics
end
