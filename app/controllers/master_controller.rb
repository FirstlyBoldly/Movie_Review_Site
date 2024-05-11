class MasterController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.new(movie_params)
    movie.save
    redirect_to master_index_path
  end

  def index
    @movies = Movie.all
  end

  def show
  end

  def edit
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :impression)
  end
end
