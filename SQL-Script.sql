CREATE TABLE `Alunos` (
  `id_Aluno` varchar(255) PRIMARY KEY NOT NULL,
  `Nome` varchar(255),
  `id_Turmas` int,
  `id_Curso` varchar(255),
  `idade` int,
  `Turno` varchar(255)
);

CREATE TABLE `cursos` (
  `id_Curso` varchar(255) PRIMARY KEY NOT NULL,
  `Vagas` int,
  `Turno` varchar(255),
  `id_professor` varchar(255)
);

CREATE TABLE `Turmas` (
  `id_Turmas` int PRIMARY KEY NOT NULL,
  `Quantidade` int,
  `Turno` varchar(255)
);

CREATE TABLE `Professores` (
  `id_professor` varchar(255) PRIMARY KEY NOT NULL,
  `Nome_professor` varchar(255),
  `id_Curso` varchar(255),
  `salario` int,
  `Turno` varchar(255),
  `id_Turmas` int
);

ALTER TABLE `Alunos` ADD FOREIGN KEY (`id_Turmas`) REFERENCES `Turmas` (`id_Turmas`);

ALTER TABLE `Alunos` ADD FOREIGN KEY (`id_Curso`) REFERENCES `cursos` (`id_Curso`);

ALTER TABLE `cursos` ADD FOREIGN KEY (`id_professor`) REFERENCES `Professores` (`id_professor`);

ALTER TABLE `Professores` ADD FOREIGN KEY (`id_Curso`) REFERENCES `cursos` (`id_Curso`);

ALTER TABLE `Professores` ADD FOREIGN KEY (`id_Turmas`) REFERENCES `Turmas` (`id_Turmas`);
