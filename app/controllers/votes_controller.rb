class VotesController < ApplicationController
	def new
    vote = Vote.new
  end

  def create
    post = Post.find params[:post_id]
    vote = post.votes.build :value => params[:value]
    vote.user = current_user
    if vote.save
      redirect_to root_path
    else
      flash[:notice] = "Can't vote twice on the same post."
      redirect_to root_path
    end
    
  end

end