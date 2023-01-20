SELECT
  ca.cancao AS nome,
  COUNT(*) AS reproducoes
FROM SpotifyClone.cancoes AS ca
INNER JOIN SpotifyClone.historico AS hi
ON ca.cancao_id = hi.cancao_id
INNER JOIN SpotifyClone.usuarios AS us
ON us.usuario_id = hi.usuario_id
INNER JOIN SpotifyClone.planos AS pl
ON pl.plano_id = us.plano_id
WHERE pl.plano IN ('gratuito', 'pessoal')
GROUP BY ca.cancao
ORDER BY nome ASC;
