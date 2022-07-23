SELECT
	u.nome AS usuario,
  COUNT(rpu.songs_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(c.duration) / 60, 2) AS total_minutos
FROM SpotifyClone.usuario AS u
LEFT JOIN SpotifyClone.reproducoes_por_usuario AS rpu
ON rpu.user_id = u.id
RIGHT JOIN SpotifyClone.cancoes AS c
ON c.id = rpu.songs_id
WHERE u.id IS NOT NULL
GROUP BY u.id
ORDER BY usuario ASC;
