class HomeController < ApplicationController
  def index
    
    @posts = Post.all.order("id desc")

    unless user_signed_in?
    redirect_to "/users/sign_in"
    end
    
    
    
    
  end
  
  
  
  
  
  def write
    
    post = Post.new
    post.title = params[:title]
    post.video = params[:video]
    post.save
    redirect_to '/home/wkdcksdnrwhrbtlr'
    
    
  end
  
  
  def reply_write
    reply = Reply.new
    reply.post_id = params[:id_of_post]

    reply.content = params[:content]
    reply.save
    redirect_to "/home/index"
    
    
  end
  
  
  def upload  
    
    file = params[:pic]
    uploader = GumUploader.new
    uploader.store!(file)
    
    flash[:notice] ="전송 되었습니다!"
    redirect_to "/home/index"
    
    
  end
  
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end
