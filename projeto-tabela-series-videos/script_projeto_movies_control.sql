CREATE DATABASE movies_control;

Use movies_control;

CREATE TABLE movies (
		id int unsigned auto_increment not null,
        tipo int unsigned not null,
        nome varchar(30) not null,
        total_ep int unsigned,
        atual_ep int unsigned,
        last_view timestamp default current_timestamp(),
        PRIMARY KEY (id)
);

--- Qaundo incluímos um default current_timestamp, quando não preenchemos uma data, o sistema inclui automaticamente a data atual.
/* Tipo:
Serie = 0
Filme = 1
*/

INSERT INTO movies (tipo, nome, total_ep, atual_ep) VALUES (0, 'Friends', 10, 1); --- Modelo para inserção de Series
INSERT INTO movies (tipo, nome) VALUES (1, 'Avengers'); --- Modelo para inserção de Filmes

select * from movies;

UPDATE movies SET last_view = '2022-02-26 00:00:00' WHERE id = 1; --- Atualiza a data de modificação.

select date(last_view) from movies;
select time(last_view) from movies;

INSERT INTO movies (tipo, nome, total_ep, atual_ep) VALUES (0, 'Todo mundo odeia o Chris', 20, 1);
UPDATE movies SET last_view = '2022-02-23 00:00:00' WHERE id = 3;

INSERT INTO movies (tipo, nome) VALUES (1, '1917');
INSERT INTO movies (tipo, nome) VALUES (1, '300');

DELETE FROM movies where id = 4;
select * from movies;