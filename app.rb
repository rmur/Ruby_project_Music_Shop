require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/artists')
require_relative('./models/albums')
require_relative('controllers/artists')
require_relative('controllers/albums')
require_relative('controllers/inventory')

#home page
get '/' do
  erb(:index)
end

# #creating new album
# get '/albums' do
#   @artist = Artist.all
#   erb( :"albums/new_album" )
# end
# #saves the album
# post '/Albums' do
#   @album = Album.new(params)
#   @album.save
#   redirect to '/albums'
# end
