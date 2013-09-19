require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'

require_relative 'lib/twitter'
require_relative 'lib/follower_clash'

include Twitter

get '/'  do
  erb :index
end


post '/twitter'  do 
# @author = params[:fname]
# @status = params[:post] 
# @tweets = {}
# t = Twitter::Tweet.new(@status,@author) 
# @first = t.status
# @second = t.author
# @tweets[@second] = [@status]

@user1 = params["login-a"]
@user2 = params["login-b"]
@result = FollowerClash::Comparer.new(@user1, @user2)

 # @tweets = Twitter::Tweet.give_me_tweets(20)

 
 # return "#{name} : #{post}"
 erb :twitter_results
end


