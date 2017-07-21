require('pry')
require_relative('sql_runner')
require_relative('../models/artists')

Artist.delete_all


artist1= Artist.new( {'name' => 'Linkin Park' } )

artist1.save

binding.pry
nil