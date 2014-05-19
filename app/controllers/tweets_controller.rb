class TweetsController < ApplicationController
	before_action :authenticate_user!
  
	def index
		@tweets = current_user.tweets
  end

  def new
		@tweet = Tweet.new
  end

  def create
		@tweet = Tweet.new
		@tweet.content = params[:tweet][:content]
		@tweet.posted_on = DateTime.now
		@tweet.user = current_user
		@tweet.save!
		redirect_to :action => :index
  end
end
