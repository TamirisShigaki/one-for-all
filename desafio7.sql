SELECT a.nome AS artista,
al.album AS album,
COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al ON al.artista_id = a.artista_id
INNER JOIN SpotifyClone.seguindo AS s ON s.artista_id = a.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
