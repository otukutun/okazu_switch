#coding: utf-8
require 'sinatra'
require 'haml'
#require 'sinatra/reloader'
require 'open-uri'
#require 'json'

set :bind, '0.0.0.0'

get '/' do
  haml :index
end

get '/video' do
  @ary = ["http://flashservice.xvideos.com/embedframe/2939516","http://flashservice.xvideos.com/embedframe/2939516","http://flashservice.xvideos.com/embedframe/2939516","http://flashservice.xvideos.com/embedframe/2939516"]
  #@ary2 = @ary[rand 3] << "?autoplay=1"
  @ary2 = @ary[0]
  haml :video
end

get '/about' do
  haml :about
end
