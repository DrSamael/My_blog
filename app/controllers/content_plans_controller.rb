class ContentPlansController < ApplicationController
  def index
    @posts = Post.where(status: :planned)
  end

  def new
    @content_plan = ContentPlan::FormObject.new
  end

  def create
    @content_plan = ContentPlan::FormObject.new(content_plan_params)
    if @content_plan.save
      redirect_to content_plans_path
    end
  end

  def content_plan_params
    params.require(:content_plan).permit(titles: [])
  end

  def add_title
    render partial: 'add_title'
  end
end
