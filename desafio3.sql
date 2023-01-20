SELECT
  us.usuario AS usuario,
  COUNT(*) AS qt_de_musicas_ouvidas,
  ROUND(SUM(ca.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.historico AS hi
ON us.usuario_id = hi.usuario_id
INNER JOIN SpotifyClone.cancoes AS ca
ON ca.cancao_id = hi.cancao_id
GROUP BY hi.usuario_id
ORDER BY usuario;
