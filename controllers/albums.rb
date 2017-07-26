require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('../models/artists')
require_relative('../models/albums')

#creating new album
get '/albums' do
  @artist = Artist.all
  erb( :"albums/new_album" )
end
#saves the album
post '/albums' do
  @album = Album.new(params)
  @album.save
  redirect to '/albums'
end