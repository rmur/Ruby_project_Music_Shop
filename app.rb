require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/artists')
require_relative('./models/albums')

#home page
get '/' do
  erb(:index)
end

get '/stock_management/new_album' do
  erb( :"stock_management/stock_management" )
end

