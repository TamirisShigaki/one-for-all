SELECT u.usuario AS usuario,
 IF(MAX(YEAR(r.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN
    SpotifyClone.reproducoes AS r ON u.usuario_id = r.usuario_id
GROUP BY u.usuario_id ORDER BY usuario;
