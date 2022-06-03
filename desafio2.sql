SELECT COUNT(DISTINCT(c.nome)) AS cancoes,
COUNT(DISTINCT(a.nome)) AS artistas,
COUNT(DISTINCT(al.album)) AS albuns
FROM SpotifyClone.cancoes AS c, 
SpotifyClone.artistas as a,
SpotifyClone.albuns as al;