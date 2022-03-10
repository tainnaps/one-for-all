SELECT t1.usuario, t1.qtde_musicas_ouvidas, t2.total_minutos
FROM (
  SELECT u.id AS id, u.name AS usuario, COUNT(h.song_id) AS qtde_musicas_ouvidas
  FROM SpotifyClone.Users AS u
  INNER JOIN SpotifyClone.ReproductionsHistoric AS h ON u.id = h.user_id
  GROUP BY u.name, u.id
) AS t1
INNER JOIN (
  SELECT h.user_id AS id, ROUND(SUM(s.duration_sec / 60), 2) AS total_minutos
  FROM SpotifyClone.ReproductionsHistoric AS h
  INNER JOIN SpotifyClone.Songs AS s ON h.song_id = s.id
  GROUP BY h.user_id
) AS t2 ON t1.id = t2.id
ORDER BY t1.usuario;
