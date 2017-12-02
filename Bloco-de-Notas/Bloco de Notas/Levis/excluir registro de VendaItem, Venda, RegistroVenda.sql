delete from ItemVenda where venda_id in ( select id from Venda where data_venda between '2017-05-01 00:00:00' and '2017-05-31 23:59:59' and code_loja = '031964')

delete from Venda where data_venda between '2017-05-01 00:00:00' and '2017-05-31 23:59:59'  and code_loja = '031964';

delete from Registro where data_registro between '2017-05-01 00:00:00' and '2017-05-31 23:59:59' and code_remetente = '031964';



select sum(valor_liquido) from ItemVenda where venda_id in ( select id from Venda where data_venda between '2016-12-14 00:00:00' and '2016-12-14 23:59:59' and code_loja = (select code from Loja where apelido = 'FREICA')); 

select cnpj from Loja where apelido = 'VILAOLI';



