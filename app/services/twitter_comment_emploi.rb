require "twitter"
require "dotenv"
Dotenv.load

class TwitterCommentReims

	attr_accessor :client

	def initialize
		@client = Twitter::REST::Client.new do |config|
			config.consumer_key        = Rails.application.credentials.dig(:TWITTER_API_KEY)
			config.consumer_secret     = Rails.application.credentials.dig(:TWITTER_API_SECRET)
			config.access_token        = Rails.application.credentials.dig(:TWITTER_ACCESS_TOKEN)
			config.access_token_secret = Rails.application.credentials.dig(:TWITTER_ACCESS_SECRET)
		end
	end

	def perform
		@client.search("#reims", result_type: "recent").take(10).each do |tweet|
 		@client.update("@#{tweet.user.screen_name} Envie d'une formation gratuite en programmation ? Rejoins THP http://bit.do/girlycody")
			# @client.update("Envie d'une formation gratuite en programmation ? Rejoins THP https://thehackingproject.org/", in_reply_to_tweet_id:tweet.user.id)
		end
	end

end
