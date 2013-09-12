require 'rubygems'
require 'bundler/setup'
require 'sinatra'

get '/hi' do
  'hello world'
end
