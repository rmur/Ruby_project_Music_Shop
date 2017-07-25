require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/artists')
require_relative('./models/albums')
# require_relative('./controllers/inventory')
# require_relative('./controllers/stock_management')

#home page
get '/' do
  erb(:index)
end

#creating new album
get '/stock_management/new_album' do
  @artist = Artist.all
  erb( :"stock_management/new_album" )
end
#saves the album
post '/stock_management' do
  @album = Album.new(params)
  @album.save
  redirect to '/stock_management'
end
