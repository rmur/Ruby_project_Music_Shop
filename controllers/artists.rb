require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('../models/artists')
require_relative('../models/albums')