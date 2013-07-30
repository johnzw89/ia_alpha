class Comic < ActiveRecord::Base
  attr_accessible :synoposis

  belongs_to :user
end
