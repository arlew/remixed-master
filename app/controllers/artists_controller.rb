class ArtistsController < ApplicationController
  def index
    @artists = Artist.active
  end

  def new
  end

  def create
    redirect_to artists_path
  end

  def show
  end
end
