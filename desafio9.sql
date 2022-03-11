SELECT
  COUNT(h.song_id) AS quantidade_musicas_no_historico
FROM
  SpotifyClone.ReproductionsHistoric AS h
  INNER JOIN SpotifyClone.Users AS u ON u.id = h.user_id
WHERE
  u.name = 'Bill';
