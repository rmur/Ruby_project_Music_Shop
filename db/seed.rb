require('pry')
require_relative('sql_runner')
require_relative('../models/artists')
require_relative('../models/albums')

Album.delete_all
Artist.delete_all


artist1= Artist.new( {'name' => 'Linkin Park' } )
artist1.save
album1 = Album.new ( {'name' => 'Hyrbid Theory', 'ideal_stock' => '30', 'current_stock' => '20'} )
p album1
album1.save
binding.pry
nil