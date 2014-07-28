class PostsController < ApplicationController
  #before_action :signed_in_user, only: [:index, :show, :main]

  def show
    @post = Post.find(params[:id])
    
  end

  def index
    @posts = Post.all
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "post created!"
      redirect_to posts_path
    else
      @feed_items = []
      redirect_to posts_path
    end
  end
  
  def destroy
    @post.destroy
    redirect_to root_url
  end

  private

    def post_params
      params.require(:post).permit(:title, :content)
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