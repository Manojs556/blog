class PostController < ApplicationController
  def create

  end
  def store
    @image=Cloudinary::Uploader.upload(params[:media] )
    @post=Post.new({title: params[:title], body: params[:body], author: params[:author],  media: @image['secure_url']})
    @post.save
    redirect_to('/home/index')
    end
end
