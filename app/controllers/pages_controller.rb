class PagesController < ApplicationController
  def home
    @blog = Blog.new
    @blogs = Blog.includes(:comments).all
  end
end
