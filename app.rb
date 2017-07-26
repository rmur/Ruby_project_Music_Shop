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


