class PostsController < ApplicationController
  def index
    @post = Post.all
  end
  def new
    @post = Post.new
  end

  private

  def post_params
    params(:post).require(:title, :body)
  end


end
