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

<<<<<<< HEAD
@user1 = params[:user1_login]
@user2 = params[:user2_login]
>>>>>>> userview
user1= FollowerClash::User.new(@user1)
user2 = FollowerClash::User.new(@user2)
@result = FollowerClash::Comparer.new(user1, user2)
erb :twitter_results

end


