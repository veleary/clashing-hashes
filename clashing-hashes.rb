require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'

require_relative 'lib/follower_clash.rb'

get '/'  do
  erb :index
end


post '/twitter'  do  
  @user1= FollowerClash::User.new(params[:user1_login])
  @user2 = FollowerClash::User.new(params[:user2_login])
  @result = FollowerClash::Comparer.new(@user1, @user2).compare
  erb :twitter_results
end


