create table if not exists artist_list (
	artist_id serial primary key not null,
	artist_alias varchar(100)
	);
	
create table if not exists album_list (
	album_id serial primary key not null,
	artist_id integer references artist_list(artist_id) not null,
	album_name varchar(100) not null,
	album_year real check(album_year > 0)
	);
	
create table if not exists track_list (
	album_id integer references album_list(album_id) not null,
	track_id serial primary key not null,
	track_name varchar(100) not null,
	track_duration interval minute to second not null
	);

