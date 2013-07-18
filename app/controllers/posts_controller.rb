class PostsController < ActionController::Base
	def show
		@post = Post.all
	end
	def new
	end
	def create
	end
	def update
	end
end