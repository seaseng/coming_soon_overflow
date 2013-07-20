class VotesController < ApplicationController
	def new
    # REVIEW: this doesn't belong here, this should be moved to create action
    # new action is only responsible for showing the form.
    # Also, I wouldn't mass assign all of this, here is a preferred way:
    # post = Post.find params[:post_id]
    # vote = post.votes.build :value => params[:value]
    # vote.user = current_user
    vote = Vote.new(user_id: current_user.id, post_id: params[:post_id], value: params[:value])
    if vote.save
      redirect_to root_path
    else
      flash[:notice] = "Can't vote twice on the same post."
      redirect_to root_path
    end
  end
end
