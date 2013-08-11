class ComicTitle < ActiveRecord::Base
  attr_accessible :synopsis, :title

  has_many :comics
  belongs_to :user
  validates :user_id, presence: true
end
