-- 1
SELECT Nome, Ano FROM Filmes;
-- 2
SELECT Nome, Ano FROM Filmes
ORDER BY Ano;
-- 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome='De Volta Para o Futuro';
-- 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano=1997;
-- 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000;
-- 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao BETWEEN 101 AND 150
ORDER BY Duracao;
-- 7
SELECT Ano, COUNT(1) AS Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;
-- 8
SELECT * FROM Atores
WHERE Genero='M';
-- 9
SELECT * FROM Atores
WHERE Genero='F'
ORDER BY PrimeiroNome;
-- 10
SELECT Filmes.Nome AS Nome, Generos.Genero AS Genero FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero;
-- 11
SELECT Filmes.Nome AS Nome, Generos.Genero AS Genero FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mist�rio';
-- 12
SELECT Filmes.Nome AS Nome, Atores.PrimeiroNome AS PrimeiroNome, Atores.UltimoNome AS UltimoNome, ElencoFilme.Papel AS Papel FROM ElencoFilme
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;