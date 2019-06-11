class UsersController < ApplicationController
  def show
  user = User.find(params[:id])
  @nickname = user.nickname
  @tweet = user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end
end