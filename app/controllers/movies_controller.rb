class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  def index
    @movies = Movies.all
  end

  def show
  end

  def new
    @movie = 
  end

  def create

  end

  def edit
  end

  def update

  end

  def destroy
    @movie.destroy 
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movies_params
      params.require(:movie).permit(:title, :duration, :genre, :description, :trailor)
    end
end
