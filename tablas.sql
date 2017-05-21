create table disquera(
	idDisquera integer NOT NULL, --PK
	nombre varchar(45) NOT NULL
);

create table artista(
	idArtista integer NOT NULL, --PK
	nombre varchar(45) NOT NULL,
	pais varchar(45) NOT NULL,
	id_genero integer NOT NULL, --FK
	id_disquera integer NOT NULL --FK
);

create table genero_musical(
	idGenero integer NOT NULL, --PK
	nombre varchar(45) NOT NULL
);

create table album(
	idAlbum integer NOT NULL, --PK
	nombre varchar(45) NOT NULL,
	año integer NOT NULL,
	id_artista integer NOT NULL --FK
);

create table canciones(
	idCanciones integer NOT NULL,  --PK
	nombre varchar(45) NOT NULL,
	duracion varchar(4) NOT NULL,
	puntuacion varchar(5) NOT NULL
);

create table album_canciones(
	id_album integer NOT NULL, --PFK
	id_canciones integer NOT NULL --PFK
);

create table top_semanal(
	idTop integer NOT NULL, --PK
	fecha date NOT NULL,
	id_canciones_top integer NOT NULL --FK
);

create table playlist(
	idPlaylist integer NOT NULL, --PK
	nombre varchar(45) NOT NULL,
	canciones integer NOT NULL,
	seguidores integer NOT NULL
);

create table playlist_canciones(
	id_playlist integer NOT NULL, --PFK
	id_canciones integer NOT NULL --PFK
);

create table premios(
	idPremios integer NOT NULL,
	nombre_premio varchar(45) NOT NULL,
	id_artista integer NOT NULL,
	id_album integer NOT NULL
);
