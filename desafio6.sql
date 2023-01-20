SELECT
  FORMAT(MIN(valor_plano), 2) AS faturamento_minimo,
  FORMAT(MAX(valor_plano), 2) AS faturamento_maximo,
  FORMAT(AVG(valor_plano), 2) AS faturamento_medio,
  FORMAT(SUM(valor_plano), 2) AS faturamento_total
FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.planos AS pl
ON us.plano_id = pl.plano_id;
