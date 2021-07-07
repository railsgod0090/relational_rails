class CampgroundsController < ApplicationController
  def index
    @campgrounds = Campground.all
  end

  def show
    @campground = Campground.find(params[:id])
  end

  def index_campsites
    show
    @campsites = Campsite.where(campground_id: Campground.find(params[:id]))
  end
end