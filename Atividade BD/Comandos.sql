Alunos: Davi Gabriel, Brunno, Carlos Cardozo e Eron 2info1


1 -

select nome_funcionario, cpf_funcionario, salario_funcionario, tipo_funcionario from funcionario, tipo_funcionario
where funcionario.cod_tipo_funcionario = tipo_funcionario.cod_tipo_funcionario;

2-

select titu_obra, ano_obra, nome_autor, nacionalidade_autor, desc_estilo_obra from obra, autor, tipo_obra 
where obra.cod_autor = autor.cod_autor and obra.cod_tipo_obra = tipo_obra.cod_tipo_obra and obra.cod_tipo_obra = 1;

3-

select custo_mnt, data_ini_mnt, data_termi_mnt, desc_mnt from manutencao;

4-

select nome_mat_prima, qtd_est_mat, desc_mnt, custo_mnt, titu_obra, ano_obra, nome_funcionario from manutencao, manu_mat, obra, funcionario, autor, materia_prima
where manutencao.cod_obra = obra.cod_obra and manutencao.func_id_funcionario = funcionario.id_funcionario and obra.cod_autor = 1 and autor.nome_autor = 'Francesca Tomaz' and manu_mat.Campo_1 = manutencao.mnt_obra and manu_mat.Campo_2 = materia_prima.cod_mat_prima;

5-

select titu_obra, SUM(custo_mnt) as soma_total from obra, manutencao
where manutencao.cod_obra = obra.cod_obra GROUP BY titu_obra;

6-

select hora_entrada, hora_saida, data_atividade from atividade, salao, salao_obra
where salao.cod_salao = salao_obra.salao_cod_salao and atividade.ob_cod_obra = salao_obra.obra_cod_obra and salao.num_salao = 101;

7 -

select nacionalidade_autor, ano_obra, titu_obra, desc_estilo_obra from obra, autor, tipo_obra 
where obra.cod_autor = autor.cod_autor and obra.cod_tipo_obra = tipo_obra.cod_tipo_obra and obra.cod_tipo_obra = tipo_obra.cod_tipo_obra and tipo_obra.cod_tipo_obra = 1;

8- 

select COUNT(titu_obra) as qtd_obra, desc_tipo_obra from obra, tipo_obra
where obra.cod_tipo_obra = tipo_obra.cod_tipo_obra GROUP BY desc_tipo_obra;

9 - 

select COUNT(titu_obra) as qtd_obra, andar_museu from obra, salao, salao_obra
where salao_obra.salao_cod_salao = salao.cod_salao and salao_obra.obra_cod_obra = obra.cod_obra GROUP BY andar_museu;

10 -

select num_salao, andar_museu, desc_estilo_obra, titu_obra, ano_obra, nome_autor from obra, salao, autor, salao_obra
where obra.cod_autor = autor.cod_autor and salao.cod_salao = salao_obra.salao_cod_salao and obra.cod_obra = salao_obra.obra_cod_obra and salao_obra.posicao_salao = 'no teto a direita';

