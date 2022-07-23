SELECT 
COUNT(Ca.id) AS cancoes,
COUNT(Ar.id) AS artistas,
COUNT(Al.id) AS albuns
FROM SpotifyClone.cancoes Ca
LEFT JOIN SpotifyClone.artists Ar
ON Ca.id = Ar.id
LEFT JOIN SpotifyClone.albuns Al
ON Ca.id = Al.id;