class CommentsController < ApplicationController
  before_filter :load_post
  
  def new
    @comment = Comment.new
  end
  
  private
  
  def load_post()
    @post = Post.find(params[:post_id])
  end
end
