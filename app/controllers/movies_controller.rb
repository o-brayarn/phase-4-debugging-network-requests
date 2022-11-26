class MoviesController < ApplicationController
  
  def index
    movies = Movie.all
    render json: movies
  end
def create
  movie = Movie.create(params_movie)
  render json: movie
end
private
def params_movie
  params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
end
end
