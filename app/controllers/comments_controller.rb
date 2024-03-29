class CommentsController < ApplicationController

  # http_basic_authenticate_with name: "DrSamael", password: "1983777", only: :destroy

  # def new
  #   @article = Article.find(params[:article_id])
  #   @comment = @article.comments.new
  # end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find_by(id: params[:id])
  end

  def update
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])

    if @comment.update(comment_params )
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
    # render file: "#{Rails.root}/public/404.html", layout: false
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :commenter_confirmation, :avatar, :status)
  end

end
