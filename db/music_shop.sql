DROP TABLE albums;
DROP TABLE artists;


CREATE TABLE artists
  (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
  );

CREATE TABLE albums
  (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  ideal_stock INT2,
  current_stock INT2,
  artist_id INT8 references artists(id) ON DELETE CASCADE 
  );
