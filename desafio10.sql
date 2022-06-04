SELECT c.nome AS nome,
COUNT(r.data_reproducao) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.reproducoes AS r ON c.cancoes_id = r.cancoes_id
INNER JOIN SpotifyClone.usuarios as u ON r.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.planos as p ON u.plano_id = p.plano_id
WHERE p.plano = 'gratuito'
OR p.plano = 'pessoal'
GROUP BY nome
ORDER BY nome;


