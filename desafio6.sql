SELECT
MIN(op.prices) AS faturamento_minimo,
MAX(op.prices) AS faturamento_maximo,
ROUND(AVG(op.prices), 2) AS faturamento_medio,
SUM(op.prices) AS faturamento_total
FROM SpotifyClone.offered_plans AS op
LEFT JOIN SpotifyClone.usuario AS user
ON SpotifyClone.user.plan_id = op.id