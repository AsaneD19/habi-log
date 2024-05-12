class FeedsController < ApplicationController

  def index
    @feeds = Feed.all
  end

  def show
    @feed = Feed.find(params[:id])
  end

  def destroy
    feed = Feed.find(params[:id])
    feed.destroy
    flash[:notice] = "You have deleted a feed successfully."
    redirect_to home_path
  end

end