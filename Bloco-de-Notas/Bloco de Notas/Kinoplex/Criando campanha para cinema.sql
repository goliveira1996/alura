select id, cinema from Cinema where nome like '%Kinoplex Goiânia%';

update EmktPeca set status = 'DESLIGADA';

--Criando Campanha
insert into EmktCampanha (data_inicio, data_termino, nome, parceiro, url_leitura) values ('2017-03-10 00:00:00.000', '2017-03-10 23:59:00.000','News Kong' , 'Kinoplex','http://www.kinoplex.com.br');
id = 96

--Inserindo valores na peça
insert into EmktPeca (corpo_html, corpo_txt, data_inicio, data_termino, formato, nome, status, campanha_id, emailInfo_id, id_cinema) values ('','Newsletter Bomboniere Kong' , '2017-03-09 00:00:00.000', '2017-03-09 23:59:00.000', "Texto e HTML", 'Newsletter Kong', "DESLIGADA", 96, NULL, '');
id 495
select id from EmktPeca where nome = 'Base Selecionada';

--Inserindo valores de e-mail
insert into EmktEmailInfo (email_erros_to,email_resposta,subject) values ('faleconosco@kinoplex.com.br', 'faleconosco@kinoplex.com.br', 'Assista ao incrível filme Kong: A Ilha da Caveira com o Combo Garras no Kinoplex');
ID = 495


update EmktPeca set emailInfo_id = 495 where id= 495;


insert into EmktStatusFila (data_proximo_envio, data_ultimo_envio, email, nome, mensagem_servidor, numero_tentativas, status_code, peca_id, data_leitura, dominio) select '2017-03-10 14:40:00.000', NULL, C.email, SUBSTRING(C.nome,1,INSTR(C.nome,' ')), 0, 0, 0, P.id, NULL, SUBSTRING(C.email, INSTR(C.email,'@')+1,LENGTH(C.email)) from ClubeUsuario U, Contato C, EmktPeca P, ClubeResposta R, ClubeQuestionario Q where Q.id = R.questionario_id and Q.contato_id = C.id and R.pergunta_id = 10 and R.valor = 'true' and U.id = C.id and P.id = 495;

update EmktStatusFila set data_proximo_envio = '2017-03-10 15:21:00.000' where peca_id = 495;

select * from EmktStatusFila where peca_id = 463\G

--Atualizando para PRONTA  
update EmktPeca set status = 'PRONTA' where campanha_id = 96;

update EmktStatusFila set data_proximo_envio = '2016-07-05 15:30:00.000' where peca_id = 468;

select count(cinema_id) from ClubeUsuario where cinema_id = 48;

