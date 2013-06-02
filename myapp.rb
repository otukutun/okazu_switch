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
  @ary = ["http://flashservice.xvideos.com/embedframe/3379905","http://flashservice.xvideos.com/embedframe/3379905","http://flashservice.xvideos.com/embedframe/140877","http://flashservice.xvideos.com/embedframe/2010020","http://flashservice.xvideos.com/embedframe/3858101","http://flashservice.xvideos.com/embedframe/129729","http://flashservice.xvideos.com/embedframe/129729","http://flashservice.xvideos.com/embedframe/4216088","http://flashservice.xvideos.com/embedframe/3249721","http://flashservice.xvideos.com/embedframe/3249721"]
  @ary2 = @ary[rand 9]
  haml :video
end

