class GenreController < ApplicationController
  # def index
  #   return nil if params[:keyword] == ""
  #   @posts = Post.where(['title LIKE ?', "%#{params[:keyword]}%"])
  #   respond_to do |format|
  #     format.html
  #     format.json
  #   end
  # end

  def create
    Genre.create(genre_params)
  end

  def show
    @genre = Genre.find(params[:id])
    @posts = @genre.posts
  end

  private
  def genre_params
    params.permit(:name)
  end
end
