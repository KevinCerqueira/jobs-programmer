USE id15973617_database;

INSERT INTO recrutador (idrecrutador, email, senha) VALUES 
(1, 'recrutador1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'recrutador2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(3, 'recrutador3@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'recrutador4@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

INSERT INTO candidato (idcandidato, nome, sobrenome, email, linkedin, nascimento) VALUES
(1, 'Candidato1', 'Sobrenome1', 'candidato1@gmail.com', 'https://www.linkedin.com/in/candidato1', '2000-01-01'),
(2, 'Candidato2', 'Sobrenome2', 'candidato2@gmail.com', 'https://www.linkedin.com/in/candidato2', '2000-02-02'),
(3, 'Candidato3', 'Sobrenome3', 'candidato3@gmail.com', 'https://www.linkedin.com/in/candidato3', '2000-03-03');

INSERT INTO tecnologia (idtecnologia, nome) VALUES
(1, 'C#'),
(2, 'JavaScript'),
(3, 'Node.js'),
(4, 'Angular'),
(5, 'React'),
(6, 'IONIC'),
(7, 'Mensageria'),
(8, 'PHP'),
(9, 'Laravel');

INSERT INTO candidato_tecnologia (idcandidato, idtecnologia) VALUES
(1, 1), (1, 3), (1, 5), (1, 7),
(2, 2),(2, 4),(2, 6),(2, 8),(2, 9),
(3, 1),(3, 4),(3, 5),(3, 8),(3, 7);