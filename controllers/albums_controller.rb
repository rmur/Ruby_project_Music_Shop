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

#update stock

get '/albums/:id' do
  erb( :"albums/update" )
end

post '/albums/:id/edit' do
  @album = Album.find(params['id'])
  @album.change_stock(params['new_number'])
  redirect '/albums'
end

#delete from the stock

post '/albums/:id/delete' do
  @album = Album.find(params['id'])
  @album.delete
  redirect '/albums'
end