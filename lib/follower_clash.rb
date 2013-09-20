require 'rubygems'
require 'bundler/setup'
require 'twitter'

module FollowerClash
  class User
    attr_reader :login

    def initialize(login)
      @login = login
    end

    def followers
      client = Twitter::Client.new.configure do |config|
        config.consumer_key = ENV['CONSUMER_KEY']
        config.consumer_secret = ENV['CONSUMER_SECRET']
        config.oauth_token = ENV['OAUTH_TOKEN']
        config.oauth_token_secret = ENV['OAUTH_TOKEN_SECRET']   
      end  
     client.user(@login).followers_count
    end
  end

  class Comparer
    def initialize(user1,user2)
      @user1 = user1
      @user2 = user2
    end

    def compare       
      if @user1.followers > @user2.followers
         @user1.login + ' has more followers'
      elsif @user1.followers < @user2.followers
        @user2.login + ' has more followers'
      else
        "It's a tie!"
      end
    end
  end
end
