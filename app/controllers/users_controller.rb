class UsersController < ApplicationController
  def show
    @user = User.includes(image_attachment: :blob).includes(:image_attachment).includes(:cover_attachment).includes(:followers).includes(followeds: [:image_attachment]).includes(followers: [:image_attachment]).includes(:tweets).includes(tweets: [:author]).find(params[:id])
    @user_tweets = @user.tweets#.includes(:author)
    @user_followers = @user.followers#.includes(image_attachment: :blob).includes(:image_attachment).includes(:followers)
    @user_followeds = @user.followeds#.includes(image_attachment: :blob).includes(:image_attachment).includes(:followers)
    @tweet = Tweet.new
  end

  def index
    @all_users = User.all
  end



end
