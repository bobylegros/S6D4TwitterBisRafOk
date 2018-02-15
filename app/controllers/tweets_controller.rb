class TweetsController < ApplicationController
  def create
    tweet = params.permit(:message)
    SendTweet.new.perform(tweet[:message])
  end

  def index
  end
end
