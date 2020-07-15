class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    @user_tweets = @user.tweets
    @user_followers = @user.followers
    @user_followeds = @user.followeds
    @tweet = Tweet.new
  end

  def index
    @all_users = User.all
  end
end
