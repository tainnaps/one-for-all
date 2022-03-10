SELECT
  u.name AS usuario,
  IF(
    MAX(YEAR(h.reproduction_date)) = 2021,
    'Usuário ativo',
    'Usuário inativo'
  ) AS condicao_usuario
FROM
  SpotifyClone.Users AS u
  INNER JOIN SpotifyClone.ReproductionsHistoric AS h ON u.id = h.user_id
GROUP BY
  usuario
ORDER BY
  usuario;
