SELECT
	c.song AS cancao,
	COUNT(rpu.songs_id) AS reproducoes
FROM SpotifyClone.reproducoes_por_usuario AS rpu
LEFT JOIN SpotifyClone.cancoes AS c
ON rpu.songs_id = c.id
GROUP BY c.id
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;