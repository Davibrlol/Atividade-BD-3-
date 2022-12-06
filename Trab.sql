-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.
create database banco_museu;
use banco_museu;


CREATE TABLE autor (
cod_autor int PRIMARY KEY,
nacionalidade_autor char(3) not null,
nome_autor varchar(80) not null
);

CREATE TABLE salao (
cod_salao int PRIMARY KEY,
num_salao int not null,
andar_museu int not null,
salao varchar(80) not null
);

CREATE TABLE salao_obra (
salao_cod_salao int not null,
obra_cod_obra int not null,
posicao_salao varchar(80) not null,
FOREIGN KEY(salao_cod_salao) REFERENCES salao (cod_salao)
);

CREATE TABLE tipo_funcionario (
cod_tipo_funcionario int PRIMARY KEY,
tipo_funcionario varchar(80) not null
);

CREATE TABLE funcionario (
id_funcionario int PRIMARY KEY,
nome_funcionario varchar(80) not null,
salario_funcionario decimal(10,2) not null,
cpf_funcionario varchar(14) not null unique,
cod_tipo_funcionario int not null,
FOREIGN KEY(cod_tipo_funcionario) REFERENCES tipo_funcionario (cod_tipo_funcionario)
);

CREATE TABLE obra (
cod_obra int PRIMARY KEY,
ano_obra year not null,
titu_obra varchar(80) not null unique,
peso_obra decimal(10,2) null,
material_obra varchar(80) null,

CREATE TABLE atividade (
ob_cod_obra int not null,
func_id_funcionario int not null,
hora_entrada time not null,
hora_saida time not null,
data_atividade date not null,
FOREIGN KEY(ob_cod_obra) REFERENCES obra (cod_obra),
FOREIGN KEY(func_id_funcionario) REFERENCES funcionario (id_funcionario)
);
desc_estilo_obra varchar(80) null,
cod_autor int not null,
cod_tipo_obra int not null,
FOREIGN KEY(cod_autor) REFERENCES autor (cod_autor)
);

CREATE TABLE tipo_obra (
cod_tipo_obra int PRIMARY KEY,
desc_tipo_obra varchar(80) not null
);

CREATE TABLE manutencao (
mnt_obra int PRIMARY KEY,
data_termi_mnt date not null,
custo_mnt decimal(10,2) not null,
data_ini_mnt date not null,
desc_mnt varchar(80) not null,
cod_obra int not null,
func_id_funcionario int not null,
FOREIGN KEY(cod_obra) REFERENCES obra (cod_obra),
FOREIGN KEY(func_id_funcionario) REFERENCES funcionario (id_funcionario)
);

CREATE TABLE materia_prima (
cod_mat_prima int PRIMARY KEY,
qtd_est_mat int not null,
nome_mat_prima varchar(80) not null
);

CREATE TABLE manu_mat (
Campo_1 int not null,
Campo_2 int not null,
qtd_mat_mnt varchar(15) not null,
FOREIGN KEY(Campo_1) REFERENCES manutencao (mnt_obra),
FOREIGN KEY(Campo_2) REFERENCES materia_prima (cod_mat_prima)
);

ALTER TABLE salao_obra ADD FOREIGN KEY(obra_cod_obra) REFERENCES obra (cod_obra);
ALTER TABLE obra ADD FOREIGN KEY(cod_tipo_obra) REFERENCES tipo_obra (cod_tipo_obra);





insert into autor (cod_autor, nacionalidade_autor, nome_autor) values
(1, "IT", "Francesca Tomaz"),
(2, "BR", "Lucas Henrique"),
(3, "BR", "Pedro Lucas"),
(4, "BE", "Liah Olívia"),
(5, "BR", "Larissa Rodriguez"),
(6, "BR", "Luca Lopez "),
(7, "CA", "Emma Stone"),
(8, "BR", "Lucas Henrique"),
(9, "US", "John Locke"),
(10, "BR", "Laura Siqueira"),
(11, "AU", "Liam Alexander"),
(12, "GR", "Nikko Oliver"),
(13, "BR", "Nicoli Tomaz "),
(14, "BR", "Lucas Henrique"),
(15, "AR", "Mattheo Borges"),
(16, "DK", "Eryk William"),
(17, "BR", "Olivia Silva"),
(18, "US", "Jason Tatum"),
(19, "FR", "Evan Fornier "),
(20, "GB", "Lewis Hamilton");

insert into tipo_obra (cod_tipo_obra,  desc_tipo_obra ) values
(1, "Pintura"),
(2, "Escultura")

insert into obra (cod_obra, ano_obra, titu_obra, peso_obra, material_obra, desc_estilo_obra, cod_autor, cod_tipo_obra) values
(1, 2005, "Escolhido", 5.23, "madeira", "surrealista", 2, 2),
(2, 1970, "O solitário", 100.23, "mármore", "Contemporânea", 3, 2),
(3, 1950, "Pensador", 45.23, "argila", "Renascimento", 4, 1),
(4, 1902, "Santa Ceia", 31.23, "gesso", "Romantismo", 1, 2),
(5, 1978, "Jesus", 6.13, "tinta", "Retratos", 8, 1),
(6, 2001, "Garimpeiro", 3.20, "vegetais", "surrealista", 5, 1),
(7, 2003, "Homem Chorador", 1.50, "Papel", "realismo", 6, 1),
(8, 1989, "Rio Cachoeira", 2.01, "Tinta", "expressionismo", 8, 1),
(9, 1999, "Pelé", 5.67, "cerâmica", "retrato", 7, 1),
(10, 1939, "Maradona", 40.21, "cimento", "modernismo", 11, 1),
(11, 2022, "Hexa Brasileiro", 53.23, "barro", "abstrata", 12, 2),
(12, 1978, "Púskas", 8.23, "argila", "Moderna", 10, 1),
(13, 1960, "Sorridente", 3.20, "madeira", "pointilismo", 14, 1),
(14, 1994, "Alegremente", 70.12, "mármore", "cubismo", 16, 2),
(15, 1950, "Vitória", 60.00, "barro", "barroco", 15, 2),
(16, 1958, "7 a 1", 55.23, "gesso", "Classicismo", 12, 2),
(17, 1980, "As margens do Rio", 59.08, "barro", "impressionismo", 19, 2),
(18, 2005, "Python", 80.00, "argila", "realismo", 20, 2),
(19, 1920, "Fusca Preto", 13.60, "cerâmica", "surrealista", 17, 2),
(20, 1945, "Furia dos Titãs", 50.40, "mármore", "abstrata", 18, 2);


insert into tipo_funcionario(cod_tipo_funcionario, tipo_funcionario) values
(1, "Guarda"),
(2, "Restaurador de obras"),
(3, "Operários de limpeza");

insert into funcionario (id_funcionario, nome_funcionario, salario_funcionario, cpf_funcionario, cod_tipo_funcionario) values 
(1, "Davi Gabriel", 1440.00, "780.760.123-00", 1),
(2, "James D. Ward", 2040.00, "497.759.490-84", 2),
(3, "Kauã Melo Alves", 1640.00, "995.457.800-53", 1),
(4, "Vitória Araujo Ferreira", 1120.00, "024.637.690-25", 3),
(5, "Breno Cunha Ferreira", 1460.00, "103.951.320-45", 1),
(6, "Amanda Araujo Oliveira", 1530.00, "105.251.362-15", 2),
(7, "Isabela Martins Sousa", 1160.00, "900.029.570-00", 1),
(8, "Camila Barros Pinto", 1860.00, "970.828.100-08", 3),
(9, "Lucas Henrique", 11240.00, "652.958.760-80", 3),
(10, "Henrique Mendoça ", 1645.00, "676.063.620-17", 1),
(11, "Gabriel Rodrigues", 1632.00, "045.533.380-76", 2),
(12, "Pedro Alvez", 16540.00, "076.373.720-81", 1),
(13, "Olivia Rodrigo", 14230.00, "560.704.460-20", 3),
(14, "Enzo Thiago", 1534.00, "404.195.500-97", 1),
(15, "Luca Davi", 1432.00, "634.482.480-88", 1),
(16, "Cardoso Orvalho", 1642.00, "786.626.720-00", 2),
(17, "Luiza Mendes", 1432.00, "622.926.540-08", 1),
(18, "Ana Luiza Pires", 1324.00, "741.650.340-02", 3),
(19, "Nicoli Tomaz", 1543.00, "906.685.200-35", 1),
(20, "Maria Mari", 1312.00, "222.428.060-25", 2);

insert into manutencao (mnt_obra, data_termi_mnt, custo_mnt, data_ini_mnt, desc_mnt, cod_obra, func_id_funcionario) values
(1, "2005-05-10", 5235.00, "2005-02-03", "Cores ressaltada", 1, 16  ),
(2, "2014-07-10", 1235.00, "2014-04-24", "limpeza do quadro", 15, 20  ),
(3, "2003-11-10", 4565.00, "2003-02-18", "Reparo da obra", 18, 14  ),
(4, "2007-04-10", 11246.00, "2006-08-13", "Feito a restauração", 12, 11  ),
(5, "2015-12-10", 45005.00, "2015-02-03", "limpeza do quadro", 19, 7  ),
(6, "2011-08-10", 15438.00, "2011-04-23", "Feito a restauração", 2, 10  ),
(7, "2001-02-10", 65212.00, "2000-07-03", "limpeza do quadro", 8, 6  ),
(8, "2005-01-10", 3435.00, "2003-08-24", "Reparo da obra", 3, 9  ),
(9, "2004-05-10", 3948.00, "2004-02-18", "limpeza do quadro", 5, 4  ),
(10, "2008-07-10", 2133.00, "2008-01-05", "Feito a restauração", 17, 13  ),
(11, "2009-03-10", 45036.00, "2008-07-13", "Feito a restauração", 13, 17  ),
(12, "2018-07-10", 54235.00, "2018-02-03", "limpeza do quadro", 4, 5  ),
(13, "2004-11-10", 3534.00, "2003-12-31", "Feito a restauração", 9, 3  ),
(14, "2011-09-10", 54535.00, "2011-05-04", "Reparo da obra", 6, 8  ),
(15, "2006-05-10", 6535.00, "2006-02-25", "limpeza do quadro", 10, 2  ),
(16, "2017-03-10", 78135.00, "2017-01-12", "Feito a restauração", 7, 19  ),
(17, "2003-01-10", 60535.00, "2002-07-19", "Reparo da obra", 11, 12  ),
(18, "2007-07-10", 78135.00, "2007-03-08", "limpeza do quadro", 14, 18  ),
(19, "2003-09-10", 9845.00, "2007-04-12", "Feito a restauração", 20, 15  ),
(20, "2001-12-10", 45835.00, "2001-04-24", "Reparo da obra", 16, 1  );

insert into atividade (ob_cod_obra, func_id_funcionario, hora_entrada, hora_saida, data_atividade) values
(1, 1, "13:04:02", "17:10:04", "2022-04-10"),
(2, 3, "06:01:01", "14:05:01", "2020-07-11"),
(3, 2, "07:06:10", "14:45:05", "2002-04-15"),
(4, 1, "13:01:56", "16:40:14", "2022-03-12"),
(5, 3, "17:07:13", "23:30:04", "2021-04-09"),
(6, 2, "20:23:12", "04:10:42", "2005-01-30"),
(7, 1, "13:12:02", "19:50:34", "2004-02-12"),
(8, 3, "13:45:02", "19:50:44", "1999-06-18"),
(9, 2, "15:04:01", "17:14:04", "2007-03-17"),
(10, 3, "23:42:32", "05:22:54", "2010-012-12"),
(11, 2, "15:54:53", "20:30:06", "2021-10-23"),
(12, 1, "17:45:59", "18:53:08", "2008-09-26"),
(13, 3, "14:32:34", "19:32:41", "2009-08-27"),
(14, 2, "10:12:31", "12:15:54", "2001-12-25"),
(15, 2, "11:45:23", "18:54:43", "2022-02-20"),
(16, 3, "13:34:54", "19:32:32", "2020-03-15"),
(17, 1, "09:43:40", "17:16:12", "2019-05-13"),
(18, 1, "19:12:43", "06:43:54", "2016-04-23"),
(19, 2, "17:45:32", "05:23:12", "2014-01-31"),
(20, 3, "18:20:02", "04:35:32", "2017-06-30");

insert into salao(cod_salao, num_salao, andar_museu, salao) values
(1, 101, 1, "Belas Artes "),
(2, 201, 2, "Ipiranga as margens "),
(3, 301, 3, "Primavera"),
(4, 105, 1, "Orvalho"),
(5, 204, 2, "Inverno"),
(6, 306, 3, "Lucario"),
(7, 102, 1, "Outuno"),
(8, 308, 3, "Hubei"),
(9, 209, 2, "Verão"),
(10, 100, 1, "Apollo"),
(11, 304, 3, "Romano"),
(12, 200, 2, "Poisedon "),
(13, 104, 1, "Atena"),
(14, 300, 3, "Catavento"),
(15, 207, 2, "Netuno"),
(16, 107, 1, "Prettier"),
(17, 106, 1, "Vintage"),
(18, 303, 3, "Hades"),
(19, 205, 2, "Content "),
(20, 108, 1, "Genesis");

insert into salao_obra ( salao_cod_salao, obra_cod_obra, posicao_salao) values
(1, 1, "centro do salão"),
(2, 2, "na parede da direita"),
(3, 3, "canto esquerdo na parede"),
(4, 4, "no teto a direita"),
(5, 5, "centro do salão"),
(6, 6, "no teto fixado a parede"),
(7, 7, "centro para direita"),
(8, 8, "centro do salão"),
(9, 9, "centro para esquerda"),
(10, 10, "no fundo a esquerda"),
(11, 11, "na frente do pilar a direita"),
(12, 12, "a direita no teto"),
(13, 13, "no fundo do salão a direita"),
(14, 14, "fixado na parede no fundo do salão"),
(15, 15, "em cima da porta do salão"),
(16, 16, "no teto"),
(17, 17, "no pilar da frente"),
(18, 18, "na porta do salão"),
(19, 19, "ao lado do pilar esquerdo"),
(20, 20, "Fundo do salão ");

insert into materia_prima (cod_mat_prima, qtd_est_mat, nome_mat_prima) values
(1, 200, "madeira"),
(15, 420, "argila"),
(7, 24, "alumínio"),
(12, 150, "areia"),
(5, 165, "cobre"),
(13, 240, "cascalho"),
(20, 130, "calcário"),
(16, 24, "pedra"),
(9, 29, "ferro"),
(11, 46, "pedra"),
(18, 29, "argila"),
(4, 165, "alumínio"),
(8, 350, "ferro"),
(6, 153, "pedra"),
(2, 356, "calcário"),
(3, 221, "cascalho"),
(10, 56, "cobre"),
(14, 375, "areia"),
(17, 164, "alumínio"),
(19, 234, "argila");

insert into manu_mat (Campo_1, Campo_2, qtd_mat_mnt) values
(14, 12, "dez kilos"),
(10, 19, "dois kilos"),
(16, 17, "vinte kilos"),
(11, 13, "quatro kilos"),
(1, 18, "dez kilos"),
(5, 15, "dois kilos"),
(3, 20, "vinte kilos"),
(6, 1, "quatro kilos"),
(2, 5, "dois kilos"),
(9, 3, "vinte kilos"),
(7, 14, "dez kilos"),
(4, 10, "oito kilos"),
(8, 16, "nove kilos"),
(12, 11, "dezessete kilos"),
(19, 6, "doze kilos"),
(17, 2, "três kilos"),
(13, 9, "onze kilos"),
(18, 7, "dez kilos"),
(15, 4, "dezoito kilos"),
(20, 8, "treze kilos");
