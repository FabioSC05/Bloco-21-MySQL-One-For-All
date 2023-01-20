SELECT
  COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.historico AS hi
ON us.usuario_id = hi.usuario_id
WHERE us.usuario = 'Barbara Liskov'
GROUP BY hi.usuario_id;
