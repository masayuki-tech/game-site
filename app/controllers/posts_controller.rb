class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
    @post.posts_tags.build
  end

  def create
    flash[:success] = '写真を投稿しました'
    flash[:danger] = '写真の投稿に失敗しました'
    flash[:notice] = 'お知らせ'
    flash[:aiueo] = '文字列を入力'
    @post = Post.new(post_params)
    # binding.pry
    if @post.save
      redirect_to root_path, success: "投稿しました"
    else
      redirect_to new_post_path, warning: "投稿できません。入力必須項目を確認してください"
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
