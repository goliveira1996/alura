--select--
select C.nome, C.email, U.cpf, C.data_nascimento, U.sexo, T.nome, E.cidade, E.estado from ClubeUsuario U, Contato C, Cinema T, ClubeResposta R, ClubeQuestionario Q, Endereco E where Q.id = R.questionario_id 	and Q.contato_id = C.id and R.pergunta_id = 16 and R.valor = 'true' and  U.id = C.id and U.cinema_id = T.id and U.cinema_id > 0 and C.endereco_id = E.id INTO OUTFILE '/var/log/mysql/base-ativa.csv' FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n';

--Comando--
mysql kinoplex_site -e "select C.nome, C.email, U.cpf, C.data_nascimento, U.sexo, T.nome, E.cidade, E.estado from ClubeUsuario U, Contato C, Cinema T, ClubeResposta R, ClubeQuestionario Q, Endereco E where Q.id = R.questionario_id 	and Q.contato_id = C.id and R.pergunta_id = 16 and R.valor = 'true' and  U.id = C.id and U.cinema_id = T.id and U.cinema_id > 0 and C.endereco_id = E.id;" -B | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > base-ativa.csv


