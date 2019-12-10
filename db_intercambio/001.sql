CREATE TABLE bolsas(
	idBolsa serial PRIMARY KEY,
	nomeBolsa VARCHAR (50)
);

CREATE TABLE programas(
	idPrograma serial PRIMARY KEY,
	idBolsa INTEGER,
	nomePrograma VARCHAR (50),
	país VARCHAR (50),
	idioma VARCHAR (50),
	categoria VARCHAR (50),
	atuação VARCHAR (50),
	parceiro VARCHAR (50),
	dataInicioinscr DATE,
	dataFinalinscr DATE,
	linkPrograma VARCHAR,
	CONSTRAINT fk_bolsas FOREIGN KEY (idBolsa) REFERENCES bolsas (idBolsa)
);

CREATE TABLE newsletter(
	idUsuario serial PRIMARY KEY,
	idBolsa INTEGER,
	idPrograma INTEGER,
	nome VARCHAR (50),
	email VARCHAR (50),
	login VARCHAR (50),
	senha INTEGER,
	categoria VARCHAR (50),
	CONSTRAINT fk_bolsas FOREIGN KEY (idBolsa) REFERENCES bolsas (idBolsa),
	CONSTRAINT fk_programas FOREIGN KEY (idPrograma) REFERENCES programas (idPrograma)
);

--INSERT
--Tabela Bolsas
INSERT INTO bolsas (nomeBolsa)
VALUES ('Good Hope Volunteers');

INSERT INTO bolsas (nomeBolsa)
VALUES ('Rotary');

INSERT INTO bolsas (nomeBolsa)
VALUES ('Erasmus Mundus');

INSERT INTO bolsas (nomeBolsa)
VALUES ('Deutscher Akademischer Austauschdienst');

INSERT INTO bolsas (nomeBolsa)
VALUES ('Orange Tulip Scholarship');

--Tabela Programas
INSERT INTO programas (idBolsa, nomePrograma, país, idioma, categoria, atuação, parceiro, dataInicioinscr, dataFinalinscr, linkPrograma)
VALUES ('3','Mestrado em Big Data Gestão e Análises', 'Bélgica', 'Inglês','Mestrado','Tecnologia','Université Libre de Bruxelles','2019-09-16','2019-12-17', 'inserir link');

INSERT INTO programas (idBolsa, nomePrograma, país, idioma, categoria, atuação,  parceiro, dataInicioinscr, dataFinalinscr, linkPrograma)
VALUES ('3','Mestrado em Gestão e Análise de Big Data', 'Bélgica', 'Inglês','Mestrado','Tecnologia','Technische Universität Berlin','2019-09-16','2019-12-17', 'inserir link');

INSERT INTO programas (idBolsa, nomePrograma, país, idioma, categoria, atuação,  parceiro, dataInicioinscr, dataFinalinscr, linkPrograma)
VALUES ('3','Mestrado em Gestão e Análise de Big Data', 'Bélgica', 'Inglês','Mestrado','Tecnologia','Eindhoven University of Technology','2019-09-16','2019-12-17', 'inserir link');

INSERT INTO programas (idBolsa, nomePrograma, país, idioma, categoria, atuação, parceiro, dataInicioinscr, dataFinalinscr, linkPrograma)
VALUES ('3','Mestrado em Tecnologias de Linguagem e Comunicação', 'Alemanha', 'Inglês','Mestrado','Tecnologia','Universitat des Saarlandes','2019-09-16','2020-01-15', 'inserir link');

INSERT INTO programas (idBolsa, nomePrograma, país, idioma, categoria, atuação, parceiro, dataInicioinscr, dataFinalinscr, linkPrograma)
VALUES ('5','Mestrado em Design de Mídia', 'Holanda', 'Inglês','Mestrado','Comunicação','Tilburg University','2019-09-30','2020-03-01', 'inserir link');

INSERT INTO programas (idBolsa, nomePrograma, país, idioma, categoria, atuação, parceiro, dataInicioinscr, dataFinalinscr, linkPrograma)
VALUES ('5','Mestrado em Ciência de Dados e Empreendedorismo', 'Holanda', 'Inglês','Mestrado','Tecnologia','Tilburg University','2019-09-30','2020-03-01', 'inserir link');

INSERT INTO programas (idBolsa, nomePrograma, país, idioma, categoria, atuação, parceiro, dataInicioinscr, dataFinalinscr, linkPrograma)
VALUES ('1','Voluntariado na África do Sul','África do Sul','Inglês','Voluntariado','Meio Ambiente','EC English','2019-12-30','2020-12-31', 'inserir link');

INSERT INTO programas (idBolsa, nomePrograma, país, idioma, categoria, atuação, parceiro, dataInicioinscr, dataFinalinscr, linkPrograma)
VALUES ('5','Graduação em Economia Empresarial','Holanda','Inglês','Graduação','Negócios','Groningen University','2019-12-30','2020-02-20', 'inserir link');

-- SELECT
SELECT país FROM programas
WHERE programas.país = 'Bélgica';

select p.nomeprograma, b.nomebolsa, p.pais, p.parceiro, p.datafinalinscr
from programas p
inner join bolsas b on (b.idbolsa = p.idbolsa)
where p.categoria = 'Mestrado' and p.atuacao = 'Comunicação' and p.pais = 'Holanda'
group by 1, 2, 3, 4, 5
order by p.nomeprograma asc;


select p.nomeprograma, b.nomebolsa, p.pais, p.parceiro, p.datafinalinscr
from programas p
inner join bolsas b on (b.idbolsa = p.idbolsa)
group by 1, 2, 3, 4, 5
order by p.nomeprograma asc;

select categoria from programas
UNION
select atuacao from programas
UNION
select pais from programas
where categoria

with dados as (select DISTINCT(categoria), atuacao, pais from programas 
group by categoria, atuacao, pais) select * from dados

with dados as
(select 'categoria' as categoria_old, categoria from programas group by categoria
union
select 'atuacao' as categoria_old, atuacao as categoria from programas group by atuacao
union 
select 'pais' as categoria_old, pais as categoria from programas group by pais
order by categoria asc) select categoria from dados where categoria_old = 'pais'
group by 1;









