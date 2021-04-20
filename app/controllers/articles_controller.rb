class ArticlesController < ApplicationController

  def default_url_options
    { locale: I18n.locale }
  end

  # layout :articles_layout, only: :show
  # layout false

  # http_basic_authenticate_with name: "DrSamael", password: "1983777", except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @articles = Article.all
    @article = @articles.find_by(id: params[:id])
    @comment = @article.comments.new if @article.present?
  end

  def new
    @article = Article.new
    @article.comments.build
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

  def articles_layout
    @article.comments.present? ? "layouts/has_comments" : "layouts/has_not_comments"
  end

  def article_params
    params.require(:article).permit(:title, :text, :status, :published, comments_attributes: [:id, :commenter, :body, :_destroy])
  end

end
