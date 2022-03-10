SELECT
  s.name AS cancao,
  COUNT(h.song_id) AS reproducoes
FROM
  SpotifyClone.Songs AS s
  INNER JOIN SpotifyClone.ReproductionsHistoric AS h ON s.id = h.song_id
GROUP BY
  cancao
ORDER BY
  reproducoes DESC,
  cancao
LIMIT
  2;
