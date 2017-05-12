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

alter table artista add FOREIGN KEY(id_genero) REFERENCES genero_musical(idGenero);
alter table artista add FOREIGN KEY(id_disquera) REFERENCES disquera(idDisquera);

alter table album add FOREIGN KEY(id_artista) REFERENCES artista(idArtista);

alter table album_canciones add FOREIGN KEY(id_album) REFERENCES album(idAlbum);
alter table album_canciones add FOREIGN KEY(id_canciones) REFERENCES canciones(idCanciones);

alter table top_semanal add FOREIGN KEY(id_caciones_top) REFERENCES canciones(idCanciones);

alter table playlist_canciones add FOREIGN KEY(id_playlist) REFERENCES playlist(idPlaylist);
alter table playlist_canciones add FOREIGN KEY(id_canciones) REFERENCES canciones(idCanciones);

alter table premios add FOREIGN KEY(id_artista) REFERENCES artista(idArtista);
alter table premios add FOREIGN KEY(id_album) REFERENCES album(idAlbum);
