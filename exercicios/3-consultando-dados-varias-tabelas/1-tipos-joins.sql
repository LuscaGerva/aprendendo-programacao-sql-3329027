-- Crie uma consulta para realizar um left join com as tabelas "albums" e "artists"
SELECT * 
FROM albums
LEFT JOIN artists ON albums.artistId = artistS.ArtistId;