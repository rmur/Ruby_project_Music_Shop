require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('../models/artist')
require_relative('../models/album')

get '/inventory' do
  erb( :"inventory/index")

end