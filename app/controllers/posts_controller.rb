class PostsController < ApplicationController
	def index
		@posts = Post.all.reverse
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

	def sort
    @posts = Post.all.sort_by do |post|
      post.votes.where(value: 1).count - post.votes.where(value: -1).count
    end
    @posts.reverse!
    render :index
	end

  def show
  end

end
