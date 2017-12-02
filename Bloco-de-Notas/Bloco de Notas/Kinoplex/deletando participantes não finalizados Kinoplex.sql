select * from TriviaParticipante where email = 'ecmcbrasil@uol.com.br'\G

select * from TriviaParticipacao where id_participante = 897\G

select C.email from TriviaParticipacao P join TriviaParticipante C on C.id = P.id_participante where P.finalizada = 0 and P.id_promocao = 'PDF';

delete from TriviaParticipacao where id in (17482,17495,17521,17522,17528,17532,17533,17542,17604,17568,17569,17578,17579,17518,17584,17595,17596,17635,17638,1742,17657,17660);
