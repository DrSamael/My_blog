class PostsController < ApplicationController

  def index
    @top_five = PublishedPost.top_five
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = @post = Post.new
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      NotificationService.call(@post)
      # NotificationService.new(@post).portal_notification

      redirect_to post_path(@post)
    else
      flash.now[:alert] = 'something was wrong!!!'
      render 'new'
    end
  end

  def update
    @post = Post.find_by(id: params[:id])

    if @post.update(post_params)
      redirect_to @post, notice: 'UPDATED'
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:name, :title)
  end

end
