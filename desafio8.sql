SELECT
  ar.artista AS artista,
  al.album AS album
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.artista_id = al.artista_id
WHERE artista = 'Elis Regina'
ORDER BY album ASC;
