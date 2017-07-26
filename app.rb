require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('models/artist')
require_relative('models/album')
require_relative('controllers/artists_controller')
require_relative('controllers/albums_controller')
require_relative('controllers/inventory_controller')

#home page
get '/' do
  erb(:index)
end


