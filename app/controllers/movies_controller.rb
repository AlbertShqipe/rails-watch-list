class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    raise
    @movie = Movie.new(movie_params)
      if @movie.save
        redirect_to movies_path(@movie)
      else
        render :new, status: :unprocessable_entity
      end
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating, :photo)
  end

end
