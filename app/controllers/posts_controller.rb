class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new #get
    @post = Post.new
	end

	def create #post
    puts '*'*50
    puts "Title: #{params[:title]}"

    post = Post.new(title: params[:post][:title], user_id: current_user.id)
    if post.save
      redirect_to root_path
    else
      flash[:notice] = 'Error in post creation.'
      redirect_to new_post_path
    end

	end

	def update
	end
end
