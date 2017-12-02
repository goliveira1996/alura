select * from TriviaParticipante where email = 'ecmcbrasil@uol.com.br'\G

select * from TriviaParticipacao where id_participante = 897\G

select C.email from TriviaParticipacao P join TriviaParticipante C on C.id = P.id_participante where P.finalizada = 0 and P.id_promocao = 'PDF';

delete from TriviaParticipacao where id in (17485,17488,17492,17493,17497,17514,17524,17525,17529,17534,17538,17540,17541,17545,17551,17553,17566,17570,17576,17580,17591,17592,17599,17605,17606,17607,17611,17612,17621,17633,17636,17640,17642,17643,17647,17649,17651,17652,17661,17661,17667,17670,17672,17675,17677,17679,17680,17707,17702);


 'ceciliammiranda@outlook.com','giulianaferr@uol.com.br' , 'tammydepaula@yahoo.com' , 'tammydepaula@yahoo.com' , 'tammydepaula@yahoo.com'  , 'ecmcbrasil@uol.com.br','isabela.msv@gmail.com', 'carolinecid@yahoo.com.br', 'flavio.fryszman@uol.com.br', 'theworldawaitsme@hotmail.com ','kerolinandrade10@hotmail.com','thamiresneves6@gmail.com','renatapatriciaaraujo21@gmail.com','alexsantossk8@hotmail.com ','georgiorocha26@gmail.com','vannuza@msn.com','maxfeldmanbr@yahoo.com.br','leonardobourbon@gmail.com','ecmcbrasil@uol.com.br','taisamoreirasocial@gmail.com'
