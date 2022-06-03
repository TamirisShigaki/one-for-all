SELECT c.nome AS cancao,
COUNT(r.cancoes_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.reproducoes AS r ON c.cancoes_id = r.cancoes_id
GROUP BY cancao ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;