class UsersController < ApplicationController
  def show
    @user = User.includes(image_attachment: :blob).includes(:image_attachment).includes(:cover_attachment).includes(:followers).includes(followeds: [:image_attachment]).includes(followers: [:image_attachment]).includes(:tweets).includes(tweets: [:author]).find(params[:id])

    @user_tweets = @user.tweets
    @user_followers = @user.followers
    @user_followeds = @user.followeds
    @tweet = Tweet.new
  end

  def index
    @all_users = User.all
  end
end
