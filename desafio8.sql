SELECT art.name AS artista,
alb.name AS album
FROM
  SpotifyClone.Artists AS art
  INNER JOIN SpotifyClone.Albums AS alb ON alb.artist_id = art.id
WHERE
  art.name = 'Walter Phoenix'
ORDER BY
  alb.name;
