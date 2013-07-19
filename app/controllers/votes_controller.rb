class VotesController < ApplicationController
	def new
    vote = Vote.new(user_id: current_user.id, post_id: params[:post_id], value: params[:value])
    if vote.save
      redirect_to root_path
    else
      flash[:notice] = "Can't vote twice on the same post."
      redirect_to root_path
    end
  end
end