class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    @genre.save
    redirect_to @genre
  end

  def edit
    @genre = Genre.find_by_id(params[:id])
  end

  def update
    @genre = Genre.find_by_id(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to @genre
  end

  def destroy
  end

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find_by_id(params[:id])
  end
end