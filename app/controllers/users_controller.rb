class UsersController < ApplicationController 
  def show
    @movie = Post.find_tomato "Matrix"
  end
end
  
