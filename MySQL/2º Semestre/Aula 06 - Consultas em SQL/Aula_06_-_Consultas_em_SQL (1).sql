-- Aluno: Hallan Christian Morais da Cruz
USE faculdademuitonova;

-- 1 - Listar o nome, o CPF e o e-mail de todos os alunos
SELECT nome, cpf, email FROM aluno;

-- 2 - Listar o nome e a carga horária de todos os cursos que tem mais de 8 semestres
SELECT nome, cargahoraria FROM curso WHERE quantsemestres > 8;

-- 3 - Listar o nome, a idade e a carga horária de todos os professores especialistas
SELECT nome, idade, cargahoraria FROM professor WHERE nivel = 'especialista';

-- 4 - Listar o nome e a formação dos professores cuja hora aula está entre 100 e 200
SELECT nome, formacao FROM professor WHERE valorhoraaula > 100 < 200;

-- 5 - Listar o nome de todos os professores que deram aula de alguma disciplina ofertada no semestre 2021-1
SELECT professor.nome, oferta.disciplina FROM professor, oferta WHERE semestre = '2021-1' AND professor.idprofessor = oferta.professor;

-- 6 - Listar o nome do professor, o nome da disciplina e o semestre para todas as disciplinas já ofertadas 
SELECT professor.nome, disciplina.nome, oferta.semestre FROM professor, disciplina, oferta WHERE professor.idprofessor = disciplina.iddisciplina;

-- 7 - Listar o nome do curso e o nome de todas as disciplinas com mais de 80 horas que já foram ofertadas.
SELECT curso.nome, disciplina.nome FROM disciplina, curso, oferta WHERE disciplina.iddisciplina = oferta.disciplina AND oferta.curso = curso.idcurso AND oferta.semestre > 80;

-- 8 - Listar o nome de todos os professores que já deram aula de alguma oferta de uma disciplina específica (você escolhe)
SELECT professor.nome, oferta.disciplina FROM professor, oferta, disciplina WHERE disciplina.iddisciplina = oferta.disciplina AND professor.idprofessor = oferta.professor AND disciplina.nome = 'Cálculo';

-- 9 - Listar o nome do professor, da disciplina e do curso para todas as disciplinas já ofertadas. 
SELECT professor.nome, disciplina.nome, curso.nome FROM professor, disciplina, curso, oferta WHERE disciplina.iddisciplina = oferta.disciplina AND professor.idprofessor = oferta.professor AND curso.idcurso = oferta.curso;

-- 10 - Listar o nome de todos os alunos matriculados em uma determinada disciplina (você escolhe a disciplina)
SELECT aluno.nome, disciplina.nome AS 'disciplina' FROM aluno, matricula, oferta, disciplina WHERE aluno.idaluno = matricula.aluno AND matricula.oferta = oferta.idoferta AND oferta.disciplina = disciplina.iddisciplina AND disciplina.nome = 'PRogramação';

-- 11 - Listar o nome e a carga horária de todas as disciplinas que um determinado aluno já cursou (você escolhe o aluno)
SELECT aluno.nome, disciplina.nome AS 'disciplina' FROM aluno, matricula, oferta, disciplina WHERE aluno.idaluno = matricula.aluno AND matricula.oferta = oferta.idoferta AND oferta.disciplina = disciplina.iddisciplina AND disciplina.nome = 'PRogramação' AND aluno.nome = 'Ariana';
