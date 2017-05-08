--LLAVES PRIMARIAS
alter table disquera add PRIMARY KEY(idDisquera);

alter table artista add PRIMARY KEY(idArtista);

alter table genero_musical add PRIMARY KEY(idGenero);

alter table album add PRIMARY KEY(idAlbum);

alter table album_canciones add PRIMARY KEY(id_album, id_canciones);

alter table canciones add PRIMARY KEY(idCanciones);

alter table top_semanal add PRIMARY KEY(idTop);

alter table playlist_canciones add PRIMARY KEY(id_playlist, id_canciones);

alter table playlist add PRIMARY KEY(idPlaylist);

--------------------------------------------------------------------------

--LLAVES FORANEAS








ALTER TABLE <tabla donde está la llave primaria> add PRIMARY KEY (campo_de_llave_primaria);

ALTER TABLE <tabla donde está la llave foranea> add FOREIGN KEY (campo_llave_foranea) REFERENCES <tabla_referencia_PK (campo_PK)>
