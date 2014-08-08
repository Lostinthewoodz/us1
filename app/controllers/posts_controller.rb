class PostsController < ApplicationController
  #before_action :signed_in_user, only: [:index, :show, :main]

  def show
    @post = Post.find(params[:id])
  end

  def index
    if current_user.admin
      @posts = Post.all
    elsif current_user.sabre
      @posts = Post.where(sabre: true).to_a
    elsif current_user.nongds
      @posts = Post.where(nongds: false).to_a
    end
  end

  def create
    @post = current_user.posts.build(post_params)
    @user = @post.user

    if @user.sabre
      @post.sabre = true
    end
    
    if @user.nongds
      @post.nongds = true
    end

    if @post.save
      flash[:success] = "post created!"
      redirect_to posts_path
    else
      @feed_items = []
      redirect_to posts_path
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

    def post_params
      params.require(:post).permit(:title, :content, :sabre, :nongds)
    end

    def correct_user
      @post = current_user.posts.find_by(id: params[:id])
      redirect_to root_url if @post.nil?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end