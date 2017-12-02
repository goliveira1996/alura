
begin transaction 

Distribuidor

1º

update PrgDistribuidoraLocal set id_external_ant = id_external   , id_distributor_ant = id_distributor 
update PrgDistribuidoraLocal set id_external = 0, id_distributor = 0;

update D set D.id_external = T.ID_Totvs , D.id_distributor = CONVERT(int, substring(T.Codigo_Totvs,6,9))
from PrgDistribuidoraLocal D inner join TOTVSD T on D.nome like ('%' +T.Nome_filme+ '%') where  T.F2 = 8

update D set  D.id_external = T.ID_Totvs , D.id_distributor = CONVERT(int, substring(T.Codigo_Totvs,6,9))
from PrgDistribuidoraLocal D inner join TOTVSD T on T.Nome_filme like ('%' +D.nome+ ' %') 
where D.id_distributor = 0 and T.F2 = 8

update T set T.VERI = 1 from TOTVSD T inner join PrgDistribuidoraLocal D on T.ID_Totvs = D.id_external

update D set D.id_external = T.ID_Totvs , D.id_distributor = CONVERT(int, substring(T.Codigo_Totvs,6,9))
from PrgDistribuidoraLocal D inner join TOTVSD T on  D.nome like (SUBSTRING(T.Nome_filme, 1,((CHARINDEX(' ',T.Nome_filme))))+ '%')  
where D.id_distributor = 0 and T.F2 = 8 and T.VERI is NULL and LEN(SUBSTRING(T.Nome_filme, 1,((CHARINDEX(' ',T.Nome_filme))))) > 1 


update PrgDistribuidoraLocal set id_distributor = 378, id_external = '6633' where nome like 'IMO%'

update PrgDistribuidoraLocal set id_distributor = 357, id_external = '1362' where nome like 'LUME%'

update PrgDistribuidoraLocal set id_distributor = 391, id_external = '10452' where nome like 'ELO%'

update PrgDistribuidoraLocal set id_distributor = 427, id_external = '12207' where cod_distribuidora = 'CIAI'

update PrgDistribuidoraLocal set id_distributor = 275, id_external = '1375' where cod_distribuidora = 'CINE'

update PrgDistribuidoraLocal set id_distributor = 382, id_external = '8168' where cod_distribuidora = 'DAMA'

update PrgDistribuidoraLocal set id_distributor = 370, id_external = '2176' where cod_distribuidora = 'EH F'

update PrgDistribuidoraLocal set id_distributor = 394, id_external = '10578' where cod_distribuidora = 'IDEA'

update PrgDistribuidoraLocal set id_distributor = 308, id_external = '1348' where cod_distribuidora = 'ARTH'


XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


2º
Copias


update PrgCopia set id_external_product_ant = id_external_product, number_product_ant = number_product


update PrgCopia set id_external_product = null, number_product = null


update C set C.id_external_product = T.ID_Totvs, C.number_product = T.Codigo_Totvs
from PrgCopia C
inner join TOTVSC T on C.id_copia = T.Codigo_Scale

update T set T.VERI = 1 from TOTVSC T inner join PrgCopia C on T.ID_Totvs = C.id_external_product

update C set 
id_external_product = T.[ID_Totvs], 
number_product = T.[Codigo_Totvs]
 from 
PrgCopia C inner join PrgFilme F on C.id_filme=F.id_filme 
inner join TOTVSC T on (F.titulo_portugues + ' (LEGENDADO)') = T.Nome_filme
where 
C.suporte_3D = 'N'
and C.cod_exibicao = 'L'
and C.digital = 'Y'
and C.number_product is NULL
and T.VERI is null

update C set 
id_external_product = T.[ID_Totvs], 
number_product = T.[Codigo_Totvs]
 from 
PrgCopia C inner join PrgFilme F on C.id_filme=F.id_filme 
inner join TOTVSC T on (F.titulo_portugues + ' (DUBLADO)') = T.Nome_filme
where 
C.suporte_3D = 'N'
and C.cod_exibicao = 'D'
and C.digital = 'Y'
and C.number_product is NULL
and T.VERI is null


update C set 
id_external_product = T.[ID_Totvs], 
number_product = T.[Codigo_Totvs]
 from 
PrgCopia C inner join PrgFilme F on C.id_filme=F.id_filme 
inner join TOTVSC T on (F.titulo_portugues + ' (NACIONAL)') = T.Nome_filme
where 
C.suporte_3D = 'N'
and C.cod_exibicao = 'N'
and C.digital = 'Y'
and C.number_product is NULL
and T.VERI is null


update C set 
id_external_product = T.[ID_Totvs], 
number_product = T.[Codigo_Totvs]
 from 
PrgCopia C inner join PrgFilme F on C.id_filme=F.id_filme 
inner join TOTVSC T on ('3D ' +F.titulo_portugues + ' (LEGENDADO)') = T.Nome_filme
where 
C.suporte_3D = 'Y'
and C.cod_exibicao = 'L'
and C.digital = 'N'
and C.number_product is NULL
and T.VERI is null

update C set 
id_external_product = T.[ID_Totvs], 
number_product = T.[Codigo_Totvs]
 from 
PrgCopia C inner join PrgFilme F on C.id_filme=F.id_filme 
inner join TOTVSC T on ('3D ' +F.titulo_portugues + ' (DUBLADO)') = T.Nome_filme
where 
C.suporte_3D = 'Y'
and C.cod_exibicao = 'D'
and C.digital = 'N'
and C.number_product is NULL
and T.VERI is null

update T set T.VERI = 1 from TOTVSC T inner join PrgCopia C on T.ID_Totvs = C.id_external_product

update C set 
id_external_product = T.[ID_Totvs], 
number_product = T.[Codigo_Totvs]
 from 
PrgCopia C inner join PrgFilme F on C.id_filme=F.id_filme 
inner join TOTVSC T on (F.titulo_portugues + ' (LEGENDADO)') = T.Nome_filme
where 
C.suporte_3D = 'N'
and C.cod_exibicao = 'L'
and C.digital = 'N'
and C.number_product is NULL
and T.VERI is null

update C set 
id_external_product = T.[ID_Totvs], 
number_product = T.[Codigo_Totvs]
 from 
PrgCopia C inner join PrgFilme F on C.id_filme=F.id_filme 
inner join TOTVSC T on (F.titulo_portugues + ' (DUBLADO)') = T.Nome_filme
where 
C.suporte_3D = 'N'
and C.cod_exibicao = 'D'
and C.digital = 'N'
and C.number_product is NULL
and T.VERI is null


update C set 
id_external_product = T.[ID_Totvs], 
number_product = T.[Codigo_Totvs]
 from 
PrgCopia C inner join PrgFilme F on C.id_filme=F.id_filme 
inner join TOTVSC T on (F.titulo_portugues + ' (NACIONAL)') = T.Nome_filme
where 
C.suporte_3D = 'N'
and C.cod_exibicao = 'N'
and C.digital = 'N'
and C.number_product is NULL
and T.VERI is null

update prgCopia set number_product = '2.01.033.004.005', id_external_product = 4465 where id_copia = 21035
update prgCopia set number_product = '2.01.033.004.004', id_external_product = 4466 where id_copia = 21036
update prgCopia set number_product = '2.01.033.005.002', id_external_product = 4461 where id_copia = 21046
update prgCopia set number_product = '2.01.033.003.001', id_external_product = 4471 where id_copia = 21063
update prgCopia set number_product = '2.01.033.003.002', id_external_product = 4470 where id_copia = 21064
update prgCopia set number_product = NULL, id_external_product = NULL where id_copia = 21030
update prgCopia set number_product = NULL, id_external_product = NULL where id_copia = 21025
update prgCopia set number_product = NULL, id_external_product = NULL where id_copia = 21671
update prgCopia set number_product = '2.01.222.002.007', id_external_product = 6877 where id_copia = 21194
update prgCopia set number_product = NULL, id_external_product = NULL where id_copia = 21026
update prgCopia set number_product = NULL, id_external_product = NULL where id_copia = 21021
update prgCopia set number_product = NULL, id_external_product = NULL where id_copia = 21010
update prgCopia set number_product = '2.01.374.004.001', id_external_product = 5750 where id_copia = 21224






XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

3º 
Filmes
Update PrgFilme set id_external_product_ant = id_external_product , id_distributor_sequence_ant = id_distributor_sequence ,  number_product_ant = number_product 

update PrgFilme set id_external_product = null, id_distributor_sequence = null, number_product = null


update F set F.number_product = substring(C.number_product ,1,12),  F.id_distributor_sequence = CONVERT(int, substring(C.number_product,10,3))
from PrgFilme F inner join PrgCopia C on C.id_filme = F.id_filme
where C.id_external_product is not NULL

update F set F.id_external_product = T.ID_totvs  from PrgFilme F 
inner join TOTVSF T on T.codigo_totvs = F.number_product 

update T set T.VERI = 1 from TOTVSF T inner join PrgFilme F on  F.number_product = T.codigo_totvs 


update F set 
F.id_external_product = T.ID_Totvs, 
F.id_distributor_sequence = CONVERT(int, substring(T.Codigo_Totvs,10,3)), 
F.number_product = T.Codigo_Totvs
from PrgFilme F inner join TOTVSF T on F.titulo_portugues = T.Nome_filme 
where T.VERI is NULL and F.id_external_product is NULL

update prgFilme set id_external_product = 4469, id_distributor_sequence = 3 , number_product = '2.01.033.003' where id_filme = 70
update prgFilme set id_external_product = 4806, id_distributor_sequence = 8 , number_product = '2.01.024.008' where id_filme = 74
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 6
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 21
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 23
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 45
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 36
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 30
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 608
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 264
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 323
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 32
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 458
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 18
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 591
update prgFilme set id_external_product = NULL, id_distributor_sequence = NULL , number_product = NULL where id_filme = 257
update prgFilme set id_external_product = 6273, id_distributor_sequence = 3 , number_product = '2.01.370.003' where id_filme = 432


insert into prgfilme (	
			[id_filme]
           ,[id_external_product]
           ,[id_distributor_sequence]
           ,[number_product]
           ,[titulo_portugues]
           ,[titulo_original]
           ,[id_genero]
           ,[id_copia_pai]
           ,[censura]
           ,[id_origem]
           ,[cod_distribuidora]
           ,[cod_studio]
           ,[lancamento]
           ,[duracao]
           ,[num_rolos]
           ,[cod_trailer_website]
           ,[special_event]
           ,[size]
           ,[ecad]
           ,[registroAncine]
           ,[prevCopias]
           ,[dateOfficialDiary]
           ,[obsOfficialDiary]
           ,[portaria]
           ,[scenes]
           ,[sinopse]
           ,[website]
           ,[estrelando]
           ,[direcao]
           ,[img_name]
           ,[event_price]
           ,[prioridade_site]
           ,[lancamento_usa]
           ,[cod_distributor_account]
           ,[id_special_event]
           ,[id_distributor_sequence_ant]
           ,[number_product_ant]
           ,[id_external_product_ant])
     VALUES
           ((SELECT ISNULL(MAX([id_filme]) + 1, 1) FROM PrgFilme)
           ,6101
           ,8
           ,'2.01.277.008'
           ,'A SORTE EM SUAS M?OS'
           ,'LA SUERTE EM TUS MANOS'
           ,20
           ,0
           ,'12'
           ,'ARG'
           ,'IMOV'
           ,NULL
           ,'2013-12-20 00:00:00.000'
           ,110
           ,0
           ,''
           ,0
           ,''
           ,'Y'
           ,''
           ,0
           ,NULL
           ,''
           ,'PORT. 1100/06 - MJ'
           ,''
           ,''
           ,''
           ,'Jorge Drexler,	Valeria Bertuccelli,Norma Aleandro'
           ,'Daniel Burman'
           ,''
           ,NULL
           ,2
           ,NULL
           ,'IMOV'
           ,1
           ,NULL
           ,NULL
           ,NULL)

		   
		   
		   



XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX


