class PostsController < ApplicationController

	def index
		#everything here will get run 
		#when someone goest to /posts
		@posts = Post.all 
	end
end
