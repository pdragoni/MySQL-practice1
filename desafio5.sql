SELECT
	c.cancao AS cancao,
	COUNT(rpu.cancoes_id) AS reproducoes
FROM SpotifyClone.reproducoes_por_usuario AS rpu
LEFT JOIN SpotifyClone.cancoes AS c
ON rpu.cancoes_id = c.id
GROUP BY c.id
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;