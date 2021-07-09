class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
   if @post
      render json: {
        post: @post
      }
    else
      render json: {
        status: 500,
        errors: ['Could not find a post with that id']
      }
    end
  end

  def index
    @posts = Post.filter_by_incident(params[:incident_id]) if params[:incident_id].present?
    if @posts
      render json: {
        posts: @posts
      }
    else
      render json: {
        status: 500,
        errors: ['No posts found for that incident']
      }
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: {
        status: :created,
        post: @post
      }
    else 
      render json: {
        status: 500,
        errors: @post.errors.full_messages
      }
    end
  end
private
  
  def post_params
    params.require(:post).permit(:title, :body, :incident_id)
  end
  
end
