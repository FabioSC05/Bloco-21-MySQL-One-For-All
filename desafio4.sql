SELECT
  us.usuario AS usuario,
  IF (MAX(hi.data_reproducao) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.historico AS hi
ON us.usuario_id = hi.usuario_id
GROUP BY hi.usuario_id
ORDER BY usuario;
