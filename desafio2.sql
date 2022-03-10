-- Utilizei o link abaixo para entender como contar as linhas de múltiplas tabelas numa só querie.
-- link: https://stackoverflow.com/questions/606234/select-count-from-multiple-tables
SELECT(
    SELECT
      COUNT(*)
    FROM
      SpotifyClone.Songs
  ) AS cancoes,
  (
    SELECT
      COUNT(*)
    FROM
      SpotifyClone.Albums
  ) AS albuns,
  (
  SELECT
      COUNT(*)
    FROM
      SpotifyClone.Artists
  ) AS artistas;
