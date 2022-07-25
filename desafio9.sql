SELECT
COUNT(rpu.user_id) AS quantidade_musicas_no_historico
FROM reproducoes_por_usuario AS rpu
LEFT JOIN usuario
ON rpu.user_id = usuario.id
WHERE usuario.nome = "Bill";
