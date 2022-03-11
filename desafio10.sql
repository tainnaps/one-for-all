SELECT
  t1.name AS nome,
  COUNT(t1.song_id) AS reproducoes
FROM
  (
    SELECT
      h.user_id,
      s.name,
      h.song_id
    FROM
      SpotifyClone.ReproductionsHistoric AS h
      INNER JOIN SpotifyClone.Songs AS s ON s.id = h.song_id
  ) AS t1
  INNER JOIN (
    SELECT
      u.id,
      p.name AS plano
    FROM
      SpotifyClone.Users AS u
      INNER JOIN SpotifyClone.Plans AS p ON u.plan_id = p.id
  ) AS t2 ON t1.user_id = t2.id
WHERE
  t2.plano IN ('gratuito', 'pessoal')
GROUP BY
  t1.name
ORDER BY
  t1.name;
