require('pry')
require_relative('sql_runner')
require_relative('../models/artist')
require_relative('../models/album')

Album.delete_all
Artist.delete_all


artist1= Artist.new( {'name' => 'Linkin Park' } )
artist1.save
artist2= Artist.new( {'name' => 'Guns N Roses' } )
artist2.save
artist3= Artist.new( {'name' => 'Queen' } )
artist3.save
artist4= Artist.new( {'name' => 'Metallica' } )
artist4.save


album1 = Album.new ( {'name' => 'Hyrbid Theory', 'ideal_stock' => '30', 'current_stock' => '20', 'artist_id' => artist1.id} )
album1.save
album2 = Album.new ( {'name' => 'Meteora', 'ideal_stock' => '30', 'current_stock' => '15', 'artist_id' => artist1.id} )
album2.save
album3 = Album.new ( {'name' => 'Civil War', 'ideal_stock' => '30', 'current_stock' => '22','artist_id' => artist2.id} )
album3.save
album4 = Album.new ( {'name' => 'The Works', 'ideal_stock' => '30', 'current_stock' => '5', 'artist_id' => artist3.id} )
album4.save
album5 = Album.new ( {'name' => 'A Kind of Magic', 'ideal_stock' => '30', 'current_stock' => '21', 'artist_id' => artist3.id} )
album5.save
album6 = Album.new ( {'name' => 'Made in Heaven', 'ideal_stock' => '30', 'current_stock' => '20', 'artist_id' => artist3.id} )
album6.save
album7 = Album.new ( {'name' => 'Appetite for Destruction', 'ideal_stock' => '30', 'current_stock' => '5', 'artist_id' => artist2.id} )
album7.save
album8 = Album.new ( {'name' => 'Chinese Democracy', 'ideal_stock' => '30', 'current_stock' => '30', 'artist_id' => artist2.id} )
album8.save
album9 = Album.new ( {'name' => 'Hard-Wired', 'ideal_stock' => '30', 'current_stock' => '3', 'artist_id' => artist4.id} )
album9.save
album10 = Album.new ( {'name' => 'Garage Inc', 'ideal_stock' => '30', 'current_stock' => '29', 'artist_id' => artist4.id} )
album10.save



binding.pry
nil