class HomeController < ApplicationController
  def index
  
    @posts = Post.all.order("id desc")
    
  end
  
  
  def write
    
    post = Post.new
    post.title = params[:title]
    post.video = params[:video]
    post.save
    redirect_to '/home/gum_uploader'
    
  end
  
  
  def reply_write
    
  if user_signed_in?
    reply = Reply.new
    reply.name = current_user.name
    reply.post_id = params[:id_of_post]
    reply.content = params[:content]
    reply.save
    redirect_to "/"
  else
    redirect_to "/users/sign_in"
  end
    
  end
  
  
  def upload  
    
    file = params[:pic]
    uploader = GumUploader.new
    uploader.store!(file)
    flash[:notice] ="전송 되었습니다!"
    redirect_to "/home/index"
  
  end
  
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end
