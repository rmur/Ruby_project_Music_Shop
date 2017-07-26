require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('../models/artists')
require_relative('../models/albums')

#index
get '/artists' do
  @artists = Artist.all
  erb(:'artists/index')
end

#new_artist
get '/artists/new' do
  erb(:'artists/new')
end

post '/artists/new' do
  @artist = Artist.new(params)
  @artist.save
  redirect '/artists'
end