SELECT u.usuario AS usuario,
COUNT(r.cancoes_id) AS qtde_musicas_ouvidas,
ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuarios AS u
INNER JOIN
	SpotifyClone.reproducoes AS r ON u.usuario_id = r.usuario_id
INNER JOIN
	SpotifyClone.cancoes AS c ON r.cancoes_id = c.cancoes_id
GROUP BY u.usuario_id ORDER BY u.usuario;

