SELECT
  MIN(t1.price) AS faturamento_minimo,
  MAX(t1.price) AS faturamento_maximo,
  ROUND(AVG(t1.price), 2) AS faturamento_medio,
  ROUND(SUM(t1.price), 2) AS faturamento_total
FROM
  (
    SELECT
      u.name AS users,
      p.price AS price
    FROM
      SpotifyClone.Users AS u
      INNER JOIN SpotifyClone.Plans AS p ON u.plan_id = p.id
  ) AS t1;
