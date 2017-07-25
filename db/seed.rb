require('pry')
require_relative('sql_runner')
require_relative('../models/artists')
require_relative('../models/albums')

Album.delete_all
Artist.delete_all


artist1= Artist.new( {'name' => 'Linkin Park' } )
artist1.save
artist2= Artist.new( {'name' => 'Papa Roach' } )
artist2.save
artist3= Artist.new( {'name' => 'Queen' } )
artist3.save
artist4= Artist.new( {'name' => 'Metallica' } )
artist4.save


album1 = Album.new ( {'name' => 'Hyrbid Theory', 'ideal_stock' => '30', 'current_stock' => '20', 'artist_id' => artist1.id} )
album1.save
album2 = Album.new ( {'name' => 'Meteora', 'ideal_stock' => '30', 'current_stock' => '15', 'artist_id' => artist1.id} )
album2.save
album3 = Album.new ( {'name' => 'Angels', 'ideal_stock' => '30', 'current_stock' => '22','artist_id' => artist2.id} )
album3.save
album4 = Album.new ( {'name' => 'Deamons', 'ideal_stock' => '30', 'current_stock' => '16', 'artist_id' => artist3.id} )
album4.save



binding.pry
nil