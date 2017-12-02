
select id, cinema from Cinema where nome like '%Kinoplex Goiânia%';

update EmktPeca set status = 'DESLIGADA';

--Criando Campanha
insert into EmktCampanha (data_inicio, data_termino, nome, parceiro, url_leitura) values ('2016-06-30 00:00:00.000', '2016-07-28 23:59:00.000','Teste internos Scale' , 'Scale','http://www.kinoplex.com.br');
update EmktCampanha set parceiro = 'KINOPLEX' where id = 80;
id = 91

--Inserindo valores na peça
insert into EmktPeca (corpo_html, corpo_txt, data_inicio, data_termino, formato, nome, status, campanha_id, emailInfo_id, id_cinema) select '','Kinoplex - Porta dos Fundos' , '2016-06-30 00:00:00.000', '2016-07-28 23:59:00.000', formato , 'Kinoplex Dom Pedro', Status, 88, NULL, 15 from EmktPeca where id = 229;
id = 477
select id from EmktPeca where nome = 'Kinoplex Dom Pedro';

--Inserindo valores de e-mail
insert into EmktEmailInfo (email_erros_to,email_resposta,subject) values ('faleconosco@kinoplex.com.br', 'faleconosco@kinoplex.com.br', 'Quer conhecer Cannes? O Kinoplex e o Porta dos Fundos te levam nessa incrível viagem');

update EmktPeca set emailInfo_id = 470 where id= 477;


--Inserindo dados da peça
insert into EmktStatusFila (data_proximo_envio, data_ultimo_envio, email, nome, mensagem_servidor, numero_tentativas, status_code, peca_id, data_leitura, dominio) select '2016-07-30 09:00:00.000', NULL, C.email, SUBSTRING(C.nome,1,INSTR(C.nome,' ')), 0, 0, 0, P.id, NULL, SUBSTRING(C.email, INSTR(C.email,'@')+1,LENGTH(C.email)) from ClubeUsuario U, Contato C, Cinema T, EmktPeca P where P.id_cinema=T.id and U.id = C.id and U.cinema_id = T.id and U.cinema_id > 0 and status_email= 1 and P.id = 477;


--Inserindo dados OK OUTRA OPÇÃO
insert into EmktStatusFila (data_proximo_envio, data_ultimo_envio, email, nome, mensagem_servidor, numero_tentativas, status_code, peca_id, data_leitura, dominio) select '2016-08-01 20:00:00.000', NULL, C.email, SUBSTRING(C.nome,1,INSTR(C.nome,' ')), 0, 0, 0, 476, NULL, SUBSTRING(C.email, INSTR(C.email,'@')+1,LENGTH(C.email)) from ClubeUsuario U, Contato C where C.id =U.id and status_email = 1 and U.cinema_id = 48;


update EmktStatusFila set data_proximo_envio = '2016-07-04 11:12:00.000' where peca_id = 468;
update EmktStatusFila set data_proximo_envio = '2016-06-29 14:56:00.000' where peca_id = 431;

select * from EmktStatusFila where peca_id = 463\G

--Atualizando para PRONTA  
update EmktPeca set status = 'PRONTA' where campanha_id = 91;

update EmktStatusFila set data_proximo_envio = '2016-06-30 17:50:00.000' where peca_id = 468 where id = 6092651;

select count(cinema_id) from ClubeUsuario where cinema_id = 48;

