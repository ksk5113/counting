class HomeController < ApplicationController
  
  def index
    @posts = Post.all.order("id desc")
  end
  
  def write
    post = Post.new
    post.content = params[:content]
    post.len1 = post.content.length
    post.len2 = post.content.delete(' ').length
    post.wrd = post.content.split.length
    post.save
    
    if post.save
      redirect_to "/home/index"
    else
      render :text => post.errors.messages
    end
  end
  
end
