class UsersController < ApplicationController
  def show
    @user = User.includes([:followers]).includes([:image_attachment]).includes([:followeds]).find(params[:id])

    @user_tweets = @user.tweets.includes([:author])
    @user_followers = @user.followers.includes([:followers]).includes(image_attachment: [:blob])
    @user_followeds = @user.followeds.includes(image_attachment: [:blob]).includes([:followers])
    @tweet = Tweet.new
  end

  def index
    @all_users = User.all
  end
end
