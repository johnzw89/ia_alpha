class SitePagesController < ApplicationController
  def home
  	@comic = Comic.all
  	@user = User.all
  end

  def about
  end

  def collaborate
  end
end
