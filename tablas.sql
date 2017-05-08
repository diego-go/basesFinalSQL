create table disquera(
	idDisquera integer NOT NULL,
	nombre varchar(45) NOT NULL,
	direct varchar(45)
);

create table artista(
	idArtista integer NOT NULL,
	nombre varchar(45) NOT NULL,
	pais varchar(45) NOT NULL,
	id_genero integer NOT NULL, --FK
	id_disquera integer NOT NULL --FK
);

create table genero_musical(
	idGenero integer NOT NULL,
	nombre varchar(45) NOT NULL
);

create table album(
	idAlbum integer NOT NULL,
	nombre varchar(45) NOT NULL,
	año integer NOT NULL
	id_artista integer NOT NULL --FK
);

create table canciones(
	idCanciones integer NOT NULL,
	nombre varchar(45) NOT NULL,
	duracion varchar(4) NOT NULL,
	puntuacion varchar(5) NOT NULL
);

create table album_canciones(
	id_album integer NOT NULL, --FK
	id_canciones integer NOT NULL --FK
);

create table top_semanal(
	idTop integer NOT NULL,
	fecha date NOT NULL
	id_canciones_top integer --FK
);

create table playlist(
	idPlaylist integer NOT NULL,
	nombre varchar(45) NOT NULL,
	canciones integer NOT NULL
);

create table playlist_canciones(
	id_playlist integer NOT NULL,
	id_canciones integer NOT NULL
);



