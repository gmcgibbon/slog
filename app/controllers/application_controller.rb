class ApplicationController < ActionController::Base
  def welcome
    redirect_to new_blog_path
  end
end
