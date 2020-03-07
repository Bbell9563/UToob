class CommentController < ApplicationController
  before_action :set_movie

  def new
    @comment = Comment.new
  end

  def create
    @comment = @movie.comments.new(comment_params)
    if @comment.save
      redirect_to movie_path(@movie, @topic)
    else
      render :new
    end
  end

  private
    def set_movie
      @movie = Movie.find(params[:movie_id])
    end

    def set_user
      @user = @movie.user
    end

    def comment_params
      params.require(:comment).permit(:body)
    end
end
