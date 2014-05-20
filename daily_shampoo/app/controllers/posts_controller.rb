class PostsController < ApplicationController

def index
  @posts = Post.all

end


def create
  @post = Post.create(post_params)
  redirect_to :index
end


def show
   @post = Post.find(params[:id])
end

private

def post_params
  params.require(:post).permit(:title, :time, :description, :image, :user_id)
end


end
