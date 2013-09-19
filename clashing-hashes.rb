require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'

require_relative 'lib/twitter'

include Twitter

get '/'  do
  erb :index
end


post '/twitter'  do 
t = Twitter::Tweet.new(@post,@name)  
 @tweets = [t]
@name = params[:fname]
 @post = params[:post]    
 @tweets = Twitter::Tweet.give_me_tweets(20)

 
 # return "#{name} : #{post}"
 erb :twitter_results
end


