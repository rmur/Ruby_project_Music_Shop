require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('../models/artist')
require_relative('../models/album')

#index
get '/artists' do
  @artists = Artist.all
  erb(:'artists/index')
end

#new_artist
get '/artists/new' do
  erb(
    :'artists/new')
end

#shoe

# get '/artists/:id' do
#   @artist = Artist.find(params['id'])
# end

post '/artists/new' do
  @artist = Artist.new(params)
  @artist.save
  redirect '/artists'
end