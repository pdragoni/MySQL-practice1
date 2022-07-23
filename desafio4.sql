SELECT
	u.nome AS usuario,
IF (MAX(rpu.date_reproduction) > "2021-%", "Usuário ativo", "Usuário inativo")
	AS condicao_usuario
FROM SpotifyClone.usuario AS u
LEFT JOIN SpotifyClone.reproducoes_por_usuario AS rpu
ON rpu.user_id = u.id
GROUP BY usuario
ORDER BY usuario ASC;