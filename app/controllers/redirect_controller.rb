class RedirectController < ApplicationController
  def show
    @redirect_to_url = params[:url]
  end
end
