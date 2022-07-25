-- exercicio 10 --

SELECT 
	cancoes.song AS nome,
    COUNT(reproducoes_por_usuario.songs_id) AS reproducoes
FROM cancoes
LEFT JOIN reproducoes_por_usuario
ON reproducoes_por_usuario.songs_id = cancoes.id
LEFT JOIN usuario
ON reproducoes_por_usuario.user_id = usuario.id
WHERE usuario.plan_id = 1
OR usuario.plan_id = 4
GROUP BY cancoes.song
ORDER BY nome;