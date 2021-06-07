class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.save
    redirect_to @song
  end

  def edit
    @song = Song.find_by_id(params[:id])
  end

  def update
    @song = Song.find_by_id(params[:id])
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to @song
  end

  def destroy
  end

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by_id(params[:id])
    @artist = Artist.find_by_id(@song.artist_id)
    @genre = Genre.find_by_id(@song.genre_id)
  end
end