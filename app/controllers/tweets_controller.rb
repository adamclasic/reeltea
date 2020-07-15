class TweetsController < ApplicationController
  before_action :set_tweet, only: %i[show edit update destroy]

  def index
    @tweets = Tweet.includes(:author).includes(image_attachment: :blob).includes(:image_attachment).all
    @sortedtweets = @tweets.order('created_at desc')
    @tweet = Tweet.new
    @users = User.includes(:followeds).includes(:followers).includes(image_attachment: :blob).includes(:image_attachment).includes(:cover_attachment).all
  end

  def show; end

  def new
    @tweet = Tweet.new
  end

  def edit; end

  def create
    @tweet = current_user.tweets.build(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to @tweet, notice: 'Tweet was successfully created.' }
        format.json { render :show, status: :created, location: @tweet }
      else
        format.html { render :new }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to @tweet, notice: 'Tweet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet }
      else
        format.html { render :edit }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to tweets_url, notice: 'Tweet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:content, :image)
  end
end
