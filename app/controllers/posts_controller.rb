class PostsController < ApplicationController
  def new
    end
  
    # add create method here
    def create
      @post = Post.new
      @post.title = params[:title]
      @post.description = params[:description]
      @post.save
      redirect_to post_path(@post)
    end
  end
