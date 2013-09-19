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
@author = params[:fname]
@status = params[:post] 
@tweets = {}
t = Twitter::Tweet.new(@status,@author) 
@first = t.status
@second = t.author
@tweets[@second] = [@status]

 # @tweets = Twitter::Tweet.give_me_tweets(20)

 
 # return "#{name} : #{post}"
 erb :twitter_results
end


