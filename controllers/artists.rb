require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('../models/artists')
require_relative('../models/albums')

#index
get '/artists' do

erb(:'artists/index')

end

#new_artist
get '/artists/new' do

erb(:'artists/new')

end