class UsersController < ApplicationController 
  def show
    @posts = current_user.posts
    @votes = current_user.votes
  end
end
  
