class ArticlesController < ApplicationController

  def default_url_options
    { locale: I18n.locale }
  end

  # layout :articles_layout, only: :show
  # layout false

  # http_basic_authenticate_with name: "DrSamael", password: "DrSamael1983777", except: [:index, :show]

  # USERS = { "DrSamael" => "DrSamael1983777" }
  # before_action :authenticate

  # TOKEN = "secret"
  # before_action :authenticate_with_token, only: [:create]

  def index
    logger.info 'test test test !!!'
    logger_n = Logger.new("log/test_test.log")
    logger_n.warn "----------------!!!!!!!!!!!-----------------"
    logger_n.error "----------------!!!!!!!!!!!-----------------"
    logger_n.fatal "----------------!!!!!!!!!!!-----------------"

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
    session[:article_title] = @article.title
    cookies[:article_text] = @article.text

    if @article.save
      redirect_to @article
    else
      flash.now[:alert] = 'something was wrong!!!'
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article, notice: 'UPDATED'
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = "DESTROYED"

    redirect_to articles_path
  end

  private

  def articles_layout
    @article.comments.present? ? "layouts/has_comments" : "layouts/has_not_comments"
  end

  def article_params
    params.require(:article).permit(:title, :text, :status, :published, comments_attributes: [:id, :commenter, :body, :_destroy])
  end

  def authenticate
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end

  def authenticate_with_token
    authenticate_or_request_with_http_token do |token, _options|
      ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
    end
  end

end
