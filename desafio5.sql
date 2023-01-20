SELECT
  ca.cancao AS cancao,
  COUNT(*) AS reproducoes
FROM SpotifyClone.cancoes AS ca
INNER JOIN SpotifyClone.historico AS hi
ON ca.cancao_id = hi.cancao_id
GROUP BY ca.cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
