
update EmktPeca set status = 'DESLIGADA' where id = 430


--Criando Campanha
insert into EmktCampanha (data_inicio, data_termino, nome, parceiro, url_leitura) values ('20160627 00:00:00.000', '20160627 23:59:00.000','Confirmação de participação - Concurso Porta dos Fundos' , 'Kinoplex','http://www.kinoplex.com.br');
select id from EmktCampanha where nome = 'Confirmação de participação - Concurso Porta dos Fundos';


--Inserindo valores na peça
insert into EmktPeca (corpo_html, corpo_txt, data_inicio, data_termino, formato, nome, status, campanha_id, emailInfo_id, id_cinema) select '','Kinoplex - Porta dos Fundos' , '20160627 00:00:00.000', '20160627 23:59:00.000', formato , '', Status, '', NULL, NULL from EmktPeca where id = 229;
select id from EmktPeca where campanha_id  = 79;


--Inserindo valores de e-mail
insert into EmktEmailInfo (email_erros_to, email_resposta, subject) select 'suporte@scale.com.br','faleconosco@kinoplex.com.br','Quer conhecer Canner? Conclua sua Inscrição' from EmktPeca where id = 430;
select id from EmktEmailInfo where subject = 'Quer conhecer Canner? Conclua sua Inscrição';

--Atualizando Peca
update EmktPeca set emailInfo_id = 471 where id = 430;

--Inserindo dados da peça
insert into EmktStatusFila (data_proximo_envio, data_ultimo_envio, email, nome, mensagem_servidor, numero_tentativas, status_code, peca_id, data_leitura, dominio) select '2016-07-14 13:30:00.000',  NULL, C.email, C.nome, 0, 0, 0, P.id, NULL, SUBSTRING(C.email, INSTR(C.email,'@')+1,0) from TriviaParticipante C, EmktPeca P, TriviaParticipacao T where C.id = T.id_participante and P.id = 430 and T.finalizada = 0 and T.id_promocao = 'PDF';

 select * from EmktStatusFila where peca_id = 430\G
 
UPDATE EmktStatusFila set data_proximo_envio = '2016-07-14 13:20:00' where peca_id=430;
--Ou
insert into EmktStatusFila (data_proximo_envio, data_ultimo_envio, email, nome, mensagem_servidor, numero_tentativas, status_code, peca_id, data_leitura, dominio) values ('20160627 14:15:00.000', null, 'agaldino@scale.com.br', 'Allan', 0, 0,0, 430, null, 'scale.com.br');

--Atualizando para PRONTA  
update EmktPeca set status = 'PRONTA' where id = 430;