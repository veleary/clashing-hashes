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
   erb :twitter_results
# @author = params[:fname]
# @status = params[:post] 
# @tweets = {}
# t = Twitter::Tweet.new(@status,@author) 
# @first = t.status
# @second = t.author
# @tweets[@second] = [@status]

@login-a = params["login-a"]
@login-b = params["login-b"]
@userA = FollowerClash::User.new(@login-a)
@userB = FollowerClash::User.new(@login-b)
@result = FollowerClash::Comparer.new(userA, userB)

 # @tweets = Twitter::Tweet.give_me_tweets(20)

 
 # return "#{name} : #{post}"

end


