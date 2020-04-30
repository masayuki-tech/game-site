class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
    @post.posts_tags.build
  end

  def create
    @post = Post.new(post_params)
    # binding.pry
    if @post.save
      redirect_to root_path, notice: "投稿しました"
    else
      redirect_to new_post_path, alert: "投稿できません。入力必須項目を確認してください"
    end
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
    params.permit(:title, :text, :genre_id, tag_ids:[])
  end
end
