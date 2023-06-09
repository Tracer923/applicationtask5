class SearchesController < ApplicationController
  before_action :authenticate_user!
  
  def search
    @range = params[:range]
    search = params[:search]
    word = params[:word]
    @users = User.looks(search, word)
    if @range == "User"
      @users = User.looks(params[:search],params[:word])
    else
      @books = Book.looks(params[:search], params[:word])
    end
  end
end
