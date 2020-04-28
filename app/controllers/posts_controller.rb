class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    # binding.pry
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:genre_id])
  end
  
  def search
    @posts = Post.search(params[:keyword])
    # binding.pry
  end

  private
  def post_params
    params.permit(:title, :text, :genre_id, tag_ids: [])
  end
end
