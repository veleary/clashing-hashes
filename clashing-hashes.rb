require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'

require_relative 'lib/follower_clash.rb'

include Twitter

get '/'  do
  erb :index
end


post '/twitter'  do  

@user1 = params[:login_a]
@user2 = params[:login_b]
user1= FollowerClash::User.new(@user1)
user2 = FollowerClash::User.new(@user2)
@result = FollowerClash::Comparer.new(userA, userB)

erb :twitter_results
end


