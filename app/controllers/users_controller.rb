class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        # @user_tweets = @user.tweets
        # @user_follwers = @user.follwers
        # @user_followings = @user.followings
        @tweet = Tweet.new
    end

    def index
        @all_users = User.all
    end

    def followship

    f = Following.new(follower_id: current_user.id, followed_id: params['id'])
    f.save
    redirect_to user_path(params['id'])
    end

end
