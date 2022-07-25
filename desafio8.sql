SELECT
artists.nome AS artista,
albuns.album AS album
FROM artists, albuns
ORDER BY artista DESC, albuns.id ASC LIMIT 2;