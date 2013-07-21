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

  def edit
    vote = Vote.find params[:vote_id]
    vote.value = params[:value]

  end

  def update
    vote = Vote.find params[:id]
    vote.value = params[:value]
    if vote.save
      redirect_to user_path
    else
      flash[:notice] = "Can't vote twice on the same post."
      redirect_to users_show_path
    end
    
  end

end