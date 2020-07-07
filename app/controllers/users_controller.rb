class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        # @user_tweets = @user.tweets
        # @user_follwers = @user.follwers
        # @user_followings = @user.followings
    end

    def index
        @all_users = User.all
    end 
end
