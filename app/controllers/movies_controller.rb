class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
  def index
    @movies = Movies.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movies_params)
    if @movie.save
      redirect_to movies_path
    else  
      render :new
    end
  end

  def edit
  end

  def update
    if @movie.update(movies_params)
      redirect_to movie_path(@movie)
    else 
      render :edit
    end
  end

  def destroy
    @movie.destroy 
    redirect_to movies_path
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movies_params
      params.require(:movie).permit(:title, :duration, :genre, :description, :trailor)
    end
end
