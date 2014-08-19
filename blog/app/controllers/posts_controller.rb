class PostsController < ApplicationController
	def index
		@posts = Post.order('created_at DESC')
	end
	
	def show
		@post = Post.find(params[:id])
	end
	
	def new
		@post = Post.new
	end
	
	def create
		Post.create(params[:post])
		redirect_to '/'
	end
	
	def edit
		@post = Post.find(params[:id])
	end
	
	def update
		Post.find(params[:id]).update_attributes(params[:post])
		redirect_to '/'
	end
end
