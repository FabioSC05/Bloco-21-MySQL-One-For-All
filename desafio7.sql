SELECT
  ar.artista AS artista,
  al.album AS album,
  COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguidores AS se
ON ar.artista_id = se.artista_id
GROUP BY album, se.artista_id
ORDER BY seguidores DESC, artista ASC, album ASC;
