class DashboardController < ApplicationController
  def index
  	
  end

  def berita
  	@blogs = Blog.page(params[:page])
  end
end
