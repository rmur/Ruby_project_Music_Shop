require('sinatra')
require('sinatra/contrib/all') if development?

#home page
get '/' do
  erb(:index)
end

get '/stock_management' do
  erb(:stock_management)
end

