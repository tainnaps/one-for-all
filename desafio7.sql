SELECT t1.artista,
t1.album,
t2.seguidores
FROM
  (
    SELECT
      art.id AS id,
      art.name AS artista,
      alb.name AS album
    FROM
      SpotifyClone.Artists AS art
      INNER JOIN SpotifyClone.Albums AS alb ON alb.artist_id = art.id
  ) AS t1
  INNER JOIN (
    SELECT
      artist_id AS id,
      COUNT(*) AS seguidores
    FROM
      SpotifyClone.FollowingArtists
    GROUP BY
      artist_id
  ) AS t2 ON t1.id = t2.id
ORDER BY
  seguidores DESC,
  artista,
  album;
