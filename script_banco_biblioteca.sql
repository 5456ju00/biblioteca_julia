create database biblioteca;

use biblioteca;

create table aluno(
	pk int not null primary key auto_increment,
    nome varchar(255) not null
);

create table livro(
	pk int not null primary key auto_increment,
	nome varchar(255) not null
);

create table emprestimo(
	pk int not null primary key auto_increment,
    data_emprestimo date not null,
    data_devolucao date not null,
	aluno_fk int not null, foreign key (aluno_fk) references aluno (pk),
    livro_fk int not null, foreign key (livro_fk) references livro (pk)
);



INSERT INTO aluno(nome) VALUES ("Júlia");
INSERT INTO aluno(nome) VALUES ("Mariana");
INSERT INTO aluno(nome) VALUES ("Laura");
INSERT INTO aluno(nome) VALUES ("Sofia");
INSERT INTO aluno(nome) VALUES ("Sara");

select * from aluno;

INSERT INTO livro(nome) VALUES ("O pequeno Príncipe");
INSERT INTO livro(nome) VALUES ("A Bela e a Fera");
INSERT INTO livro(nome) VALUES ("A Pequena Sereia");
INSERT INTO livro(nome) VALUES ("Diario de um Banana");
INSERT INTO livro(nome) VALUES ("50 Tons de Cinza");




