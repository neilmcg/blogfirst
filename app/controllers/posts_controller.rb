class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    
    if @post.save
      redirect_to @post
    else
      redirect_to new_post_path
    end
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(@post)
      redirect_to @post
    else
      redirect_to new_post_path
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
end
