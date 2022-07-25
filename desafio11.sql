SELECT 
cancoes.song AS nome_musica,
CASE

WHEN cancoes.song LIKE '%Her Own%' THEN REPLACE("Dance With Her Own", 'Her Own', 'Trybe') 

WHEN cancoes.song LIKE '%Silly%' THEN REPLACE("Let's Be Silly", 'Silly', 'Nice') 

WHEN cancoes.song LIKE '%Circus%' THEN REPLACE("Magic Circus", 'Circus', 'Pull Request') 

WHEN cancoes.song LIKE '%Inner Fire%' THEN REPLACE("Troubles Of My Inner Fire", 'Inner Fire', 'Project') 

WHEN cancoes.song LIKE '%Streets%' THEN REPLACE("Without My Streets", 'Streets', 'Code Review') 

END AS novo_nome
FROM cancoes
WHERE cancoes.song IN ("Magic Circus", "Let's Be Silly","Dance With Her Own","Troubles Of My Inner Fire","Without My Streets")
ORDER BY nome_musica;
