class SitePagesController < ApplicationController
  def home
  	@comic_titles = ComicTitle.all
  	@user = User.all
  end

  def about
  end

  def collaborate
  end

  def publish
  end
end
