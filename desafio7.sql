SELECT 
ar.nome AS artista,
alb.album AS album,
COUNT(fa.artist_id) AS seguidores
FROM
SpotifyClone.artists AS ar
LEFT JOIN SpotifyClone.albuns AS alb
ON ar.id = alb.artist_id
RIGHT JOIN SpotifyClone.following_artists AS fa
ON fa.artist_id = ar.id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;