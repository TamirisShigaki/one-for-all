SELECT COUNT(r.data_reproducao) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.reproducoes AS r ON r.usuario_id = u.usuario_id
WHERE u.usuario = 'Bill';