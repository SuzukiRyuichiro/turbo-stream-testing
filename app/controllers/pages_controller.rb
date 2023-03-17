class PagesController < ApplicationController
  def home
    @blog = Blog.new
    @blogs = Blog.all
  end
end
