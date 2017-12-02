insert into EmktCampanha (data_inicio, data_termino, nome, parceiro, url_leitura) values ('2016-06-27 00:00:00', '2016-06-29 23:59:59','Programação semanal de 23/06 a 29/06' , 'Kinoplex	','http://www.kinoplex.com.brnull');
id = 91


update EmktPeca set status = 'PRONTA' where id = 465;
insert into EmktPeca (corpo_html, corpo_txt, data_inicio, data_termino, formato, nome, status, campanha_id, emailInfo_id, id_cinema) select '','Kinoplex - Programacao semanal' , '2016-06-23 00:00:00', '2016-06-29 23:00:00', formato , 'UCI Kinoplex Ilha', Status, 90, 431, 37 from EmktPeca where id = 229;

id=464

update EmktStatusFila set data_proximo_envio = '2016-06-30 08:45:00.000' where id between 229 and 264;

delete from EmktStatusFila where peca_id = 431;
delete from EmktPeca where campanha_id = 80;
delete from EmktCampanha where id = 80;

5861739,5861738,5861737

insert into EmktStatusFila (data_proximo_envio, data_ultimo_envio, email, nome, mensagem_servidor, numero_tentativas, status_code, peca_id, data_leitura, dominio) values ('2016-07-04 11:11:00.000',null,'ins-brad5u66@isnotspam.com','Allan',0,0,0,468,NULL,'isnotspam.com');

id = (433,438,441,467,475,466,453)

update EmktStatusFila set data_proximo_envio = '2016-07-01 15:45:00.000' where peca_id = 468;

update EmktPeca set status = 'DESLIGADA';
update EmktPeca set status = 'PRONTA' where id = 468;

#Informações
#Semana Irresistivel / Todo mundo Paga meia
select * from EmktPeca where campanha_id = 87;
id(453); OK

# Segunda Irresistivel / Todo Mundo Paga Meia 
select * from EmktPeca where campanha_id = 86;
id(466,478);

# Segunda Irresistível
select id,nome from EmktPeca where campanha_id = 85;
id(451,450,449,448,446,443,442,441);
OK

#Semana Irresistível
select id,nome from EmktPeca where campanha_id = 84;
id(438,440); OK 

#Kinoplex com ItauCard
select id,nome from EmktPeca where campanha_id = 88;
id(477,476,475,474,473,472,469,458,454,444,442,443,445);

#Kinoplex - Todo Mundo Paga Meia
select * from EmktPeca where campanha_id = 82;
id(433,434,435,479);

update EmktStatusFila set data_proximo_envio = '2016-07-08 18:00:00' where peca_id in (433,434,435,479,477,476,475,474,473,472,469,458,454,444,442,443,445,438,440,451,450,449,448,446,443,442,441,466,478,453);

update EmktPeca set status= 'PRONTA' where id in (433,434,435,479,477,476,475,474,473,472,469,458,454,444,442,443,445,438,440,451,450,449,448,446,443,442,441,466,478,453);	