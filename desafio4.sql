SELECT
	usuario.nome AS usuario,
IF (MAX(reproducoes_por_usuario.data_reproducao) > "2021-%", "Usuário ativo", "Usuário inativo")
	AS condicao_usuario
FROM SpotifyClone.usuario
LEFT JOIN SpotifyClone.reproducoes_por_usuario
ON reproducoes_por_usuario.usuario_id = usuario.id
GROUP BY usuario
ORDER BY usuario ASC;