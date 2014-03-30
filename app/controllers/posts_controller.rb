class PostsController < ApplicationController

	def index
		#everything here will get run 
		#when someone goes to /posts
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		Post.create( post_params )
		redirect_to posts_path
		#posts_path will look up in routing table  --rake routes
	end

	private 

	def post_params
		params.require(:post).permit(:title, :description)
	end
	#this allows us to suck out information from the form

end
