class BlogsController < ApplicationController
  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to root_path
    else
      @blogs = Blog.all
      render 'pages/home'
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
