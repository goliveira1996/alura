SERVIDOR: 84

mysql kinoplex_site;

update EmktPeca set status = 'DESLIGADA';

update EmktCampanha set data_inicio = '2017-09-14 00:00:00.000', data_termino = '2017-09-21 23:59:59.000', nome = 'Programação semanal de 14/09 a 21/09' where id = 98; 

update EmktPeca set data_inicio = '2017-09-14 00:00:00.000', data_termino = '2017-09-21 23:59:59.000', status = 'DESLIGADA', corpo_html = '' where id between 229 and 265;

update EmktEmailInfo set subject = 'Kinoplex - Programação semanal de 14/09 a 21/09' where id between 229 and 265;

delete from EmktStatusFila where peca_id between 229 and 265; 

--NEW--
insert into EmktStatusFila (data_proximo_envio, data_ultimo_envio, email, nome, mensagem_servidor, numero_tentativas, status_code, peca_id, data_leitura, dominio) 	select '2017-06-01 15:00:00.000', 	NULL, 	C.email, 	SUBSTRING(C.nome,1,INSTR(C.nome,' ')), 	0, 	0, 	0, 	P.id, 	NULL, 	SUBSTRING(C.email, INSTR(C.email,'@')+1,LENGTH(C.email)) from ClubeUsuario U, Contato C, Cinema T, EmktPeca P, ClubeResposta R, ClubeQuestionario Q where Q.id = R.questionario_id and Q.contato_id = C.id and R.pergunta_id = 16 and R.valor = 'true' and  P.id_cinema=T.id and U.id = C.id and U.cinema_id = T.id and U.cinema_id > 0 and P.id between 229 and 265;

update EmktStatusFila set data_proximo_envio = '2017-09-14 15:15:00' where peca_id between 229 and 265;

/* CINEMA 12 DEVE SER INSERIDO CONTEUDO HTML NA MAO */

update EmktPeca set status= 'PRONTA' where id between 229 and 265;

update EmktPeca set status = 'DESLIGADA' where corpo_html = '' and id between 229 and 265;

Start service in Server 77

PASTA: /kinoplex/emkt/	./emkt.sh

/* usuario/senha
	scaleadmin
	senha trivia: Q!W@E#R$



