insert into autor (cod_autor, nacionalidade_autor, nome_autor) values
(1, "IT", "Francesca Tomaz"),
(2, "BR", "Lucas Henrique"),
(3, "BR", "Pedro Lucas"),
(4, "BE", "Liah Olívia"),
(5, "BR", "Larissa Rodriguez"),
(6, "BR", ""),
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
(20, "GB", "Lewis Hamilton"),

insert into tipo_obra (cod_tipo_obra,  desc_tipo_obra ) values
(1, "Pintura"),
(2, "Escultura"),

insert into tipo_funcionario(cod_tipo_funcionario, tipo_funcionario) values
(1, "Guarda"),
(2, "Restaurador de obras"),
(3, "Operários de limpeza"),

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
(20, 108, 1, "Genesis"),

insert into salao_obra ( salao_cod_salao, obra_cod_obra, posicao_salao) values
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),
(1, 1m "centro do salão"),

insert into obra (cod_obra, ano_obra, titu_obra, peso_obra, material_obra, desc_estilo_obra, cod_autor, cod_tipo_obra) values
(1, 2005, "Escolhido", 5.23, "madeira", "surrealista", 1, 1)

insert into atividade (ob_cod_obra, func_id_funcionario, hora_entrada, hora_saida, data_atividade) values
()

insert into funcionario (id_funcionario, nome_funcionario, salario_funcionario, cpf_funcionario, cod_tipo_funcionario) values 
()