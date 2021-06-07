class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params.require(:artist).permit(:name, :bio))
    @artist.save
    redirect_to @artist
  end

  def edit
    @artist = Artist.find_by_id(params[:id])
  end

  def update
    @artist = Artist.find_by_id(params[:id])
    @artist.update(params.require(:artist).permit(:name, :bio))
    redirect_to @artist
  end

  def destroy
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by_id(params[:id])
  end
end