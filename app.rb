require('sinatra')
require('sinatra/contrib/all') if development?


get '/' do
  "Welcome Page"
end