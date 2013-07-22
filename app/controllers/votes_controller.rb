class VotesController < ApplicationController
	def new
    vote = Vote.new
  end

  def create
    post = Post.find params[:post_id]
    vote = post.votes.build :value => params[:value]
    vote.user = current_user

    request_path = request.headers['HTTP_REFERER']
    request_path.slice! (request.headers['HTTP_ORIGIN'])
    
    if vote.save
      redirect_to request_path
    else
      flash[:notice] = "Can't vote twice on the same post."
      redirect_to request_path
    end
    
  end

  def update
    
    vote = Vote.find params[:id]
    vote.value = params[:value]
    request_path = request.headers['HTTP_REFERER']
    request_path.slice! (request.headers['HTTP_ORIGIN'])

    if vote.save 
      redirect_to request_path
    else
      flash[:notice] = "Can't vote twice on the same post."
      redirect_to request_path
    end
    
  end


  def create_profile_vote
    post = Post.find params[:post_id]
    vote = post.votes.build :value => params[:value]
    vote.user = current_user
    if vote.save
      redirect_to user_path(current_user)
    else
      flash[:notice] = "something got fucked."
      redirect_to user_path(current_user)
    end
  end


  def edit
    vote = Vote.find params[:vote_id]
    vote.value = params[:value]

  end

  

end