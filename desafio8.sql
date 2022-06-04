SELECT a.nome AS artista,
al.album AS album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al ON al.artista_id = a.artista_id
WHERE a.nome = 'Walter Phoenix';