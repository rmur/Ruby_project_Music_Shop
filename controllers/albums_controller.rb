require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('../models/artist')
require_relative('../models/album')

#albums index
get '/albums' do
  @albums = Album.all
  erb(:"albums/index")

end

#creating new album
get '/albums/new' do
  @artist = Artist.all
  erb( :"albums/new" )
end
#saves the album
post '/albums' do
  @album = Album.new(params)
  @album.save
  redirect to '/albums'
end
