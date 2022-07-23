SELECT
	usuario.nome AS usuario,
    COUNT(reproducoes_por_usuario.cancoes_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(cancoes.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuario
LEFT JOIN SpotifyClone.reproducoes_por_usuario
ON reproducoes_por_usuario.usuario_id = usuario.id
RIGHT JOIN SpotifyClone.cancoes
ON cancoes.id = reproducoes_por_usuario.cancoes_id
WHERE usuario.id IS NOT NULL
GROUP BY usuario.id
ORDER BY usuario ASC;
