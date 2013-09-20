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

@user1 = params["login-a"]
@user2 = params["login-b"]
user1= FollowerClash::User.new(@user1)
user2 = FollowerClash::User.new(@user2)
@result = FollowerClash::Comparer.new(userA, userB)

erb :twitter_results
end


