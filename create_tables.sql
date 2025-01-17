-- Active: 1737057021318@@127.0.0.1@5432@biblioteca
create table if not EXISTS Livros(
    id_livro serial primary key,
    id_autor integer not null,
    id_genero integer not null,
    titulo varchar(100) not null,
    data_publicacao date not null,
    isbn varchar(13) not null UNIQUE,
    disponibilidade BOOLEAN not null,
    foreign key(id_autor) references Autores(id_autor) on delete cascade,
    foreign key(id_genero) REFERENCES Genero(id_genero) on delete cascade°
    );

create table if not EXISTS Autores(
    id_autor serial primary key,
    nome varchar(100) not null
);

create table if not EXISTS Genero(
    id_genero serial PRIMARY key,
    nome varchar(50) not null
);

create table if not EXISTS Usuarios(
    id_usuario serial primary key,
    id_endereco integer not null,
    nome varchar(100) not null,
    cpf varchar(14) not null unique,
    email varchar(100) not null unique,
    telefone varchar(20) not null,
    foreign key(id_endereco) REFERENCES Endereco_usuarios(id_endereco) on DELETE CASCADE
    );


create table if not exists Endereco_usuarios(
    id_endereco serial primary key,
    estado char(2) not null,
    cidade varchar(30) not null,
    rua varchar(100) not null,
    numero varchar(10),
    complemento varchar(50)
    );


create table if not EXISTS Emprestimos(
    id_emprestimo serial primary key,
    id_usuario integer not null,
    id_livro integer not null,
    data_emprestimo date not null,
    data_devolução date not null, -- implementar uma função que calcule a data exata, e use como default
    foreign key(id_usuario) REFERENCES Usuarios(id_usuario) on delete cascade,
    foreign key(id_livro) REFERENCES Livros(id_livro) on delete cascade );

create table if not exists Reservas(
    id_reserva serial primary key,
    id_usuario integer not null,
    id_livro integer not null,
    data_reserva date not null,
    status_reserva varchar(15)  check(status_reserva in ('pendente', 'cancelada', 'retirada')) not null, -- pendente, cancelada, retirada.
    FOREIGN key(id_usuario) REFERENCES Usuarios(id_usuario) on delete cascade,
    foreign key(id_livro) REFERENCES livros(id_livro) on delete cascade );

create table if not exists Multas(
    id_multa serial primary key,
    id_emprestimo integer not null,
    valor_multa decimal(10,2) not null,
    status_multa varchar(15) check(status_multa in('pago', 'pendente')) not null, -- pago, pendente
    foreign key(id_emprestimo) REFERENCES Emprestimos(id_emprestimo) on delete CASCADE );

