create table if not exists artists (
      id serial primary key,
      name_artist text,
      artist text
);

create table if not exists albums (
      id serial primary key,
      name_album text,
      year_of_release_album int
);

create table if not exists track (
      id serial primary key,
      name text,
      time numeric,
      album_id int references albums(id)
 );

create table if not exists genres (
      id serial primary key,
      name text
);

create table if not exists collections (
      id serial primary key,
      collection text,
      year_of_release_collection int
);

create table if not exists genre_artist (
      id serial primary key,
      genre_id int references genres(id),
      artist_id int references artists(id)
);

create table if not exists album_artists (
      id serial primary key,
      album_id int references albums(id),
      artist_id int references artists(id)
);

create table if not exists track_collections (
      id serial primary key,
      collection_id int references collections(id),
      track_id int references track(id)
);      



      