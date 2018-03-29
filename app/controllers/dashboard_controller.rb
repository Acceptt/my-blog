class DashboardController < ApplicationController
  def index
  	@blogs = Blog.all
  end
end
