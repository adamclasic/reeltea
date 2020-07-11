class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_tweets = @user.tweets.includes(:author)
    @user_followers = @user.followers#.includes(:follower)
    @user_followeds = @user.followeds#.includes(:following)
    @tweet = Tweet.new
  end

  def index
    @all_users = User.all
  end

end
