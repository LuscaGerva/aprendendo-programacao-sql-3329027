-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
SELECT
tra.TrackId AS Id,
tra.Name AS musica,
alb.Title AS Album,
art.Name AS Artista
FROM
tracks AS tra 
INNER JOIN albums AS alb ON tra.AlbumId = alb.AlbumId
INNER JOIN artists AS art ON art.artistId = alb.ArtistId;


-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
WITH musica AS(
SELECT
tra.TrackId AS Id,
tra.Name AS musica,
alb.Title AS Album,
art.Name AS Artista
FROM
tracks AS tra 
INNER JOIN albums AS alb ON tra.AlbumId = alb.AlbumId
INNER JOIN artists AS art ON art.artistId = alb.ArtistId)

SELECT artista,
COUNT (musica) AS qnttotalmusicas
FROM
musica
WHERE
artista LIKE 'Caetano%';