class BlogsController < ApplicationController

  before_action :load_blog, only: %i(show)
  before_action :new_blog, only: %i(new)
  before_action :build_blog, only: %i(create)

  def show
  end

  def new
  end

  def create
    if @blog.save
      redirect_to blog_path(@blog)
    else
      render action: :new
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title)
  end

  def new_blog
    @blog = Blog.new
  end

  def build_blog
    @blog = Blog.new(blog_params)
  end

  def load_blog
    @blog = Blog.find(params[:id])
  end
end
