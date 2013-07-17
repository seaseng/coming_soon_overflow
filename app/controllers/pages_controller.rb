class PagesControlller < ActionController::Base
	def index
		@post = Post.all
	end
end