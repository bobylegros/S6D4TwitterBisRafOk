require 'dotenv'

class SendTweet

  attr_reader :client

  def initialize
      Dotenv.load
      @client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV['CONSUMER_KEY']
        config.consumer_secret     = ENV['CONSUMER_SECRET']
        config.access_token        = ENV['ACCESS_TOKEN']
        config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
      end
  end

  def perform(message)
    # log_in_to_twitter
    send_tweet(message)
  end

  # def log_in_to_twitter
  # end

  def send_tweet(message)
    @client.update(message)
  end

end
