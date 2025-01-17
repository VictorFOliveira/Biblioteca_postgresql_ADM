-- Inserir Gêneros
INSERT INTO Genero (nome) 
VALUES 
    ('Ficção'),
    ('Romance'),
    ('Terror'),
    ('Aventura'),
    ('Ciência Ficção');

-- Inserir Autores
INSERT INTO Autores (nome) 
VALUES 
    ('J.K. Rowling'),
    ('George R.R. Martin'),
    ('Stephen King'),
    ('Agatha Christie'),
    ('Isaac Asimov');

    -- Inserir Livros de Gênero 'Ficção'
INSERT INTO Livros (id_autor, id_genero, titulo, data_publicacao, isbn, disponibilidade) 
VALUES 
    (1, 1, 'Harry Potter e a Pedra Filosofal', '1997-06-26', '9780747532743', TRUE),
    (2, 1, 'A Guerra dos Tronos', '1996-08-06', '9780553103540', TRUE),
    (3, 1, 'O Iluminado', '1977-01-28', '9780307743657', TRUE),
    (4, 1, 'Assassinato no Expresso do Oriente', '1934-01-01', '9780062073501', TRUE),
    (5, 1, 'Fundação', '1951-06-01', '9780553382570', TRUE);

-- Inserir Livros de Gênero 'Romance'
INSERT INTO Livros (id_autor, id_genero, titulo, data_publicacao, isbn, disponibilidade) 
VALUES 
    (1, 2, 'Morte Súbita', '2012-09-27', '9780545582954', TRUE),
    (2, 2, 'O Príncipe de Westeros', '2001-12-01', '9780553103564', TRUE),
    (3, 2, 'Coração Satânico', '1987-10-13', '9780451154821', TRUE),
    (4, 2, 'O Casamento', '2009-09-29', '9780545090464', TRUE),
    (5, 2, 'A Terra das Sombras', '2005-02-01', '9781400033617', TRUE);

-- Inserir Livros de Gênero 'Terror'
INSERT INTO Livros (id_autor, id_genero, titulo, data_publicacao, isbn, disponibilidade) 
VALUES 
    (3, 3, 'It: A Coisa', '1986-09-15', '9780452282993', TRUE),
    (2, 3, 'O Cemitério', '1983-11-29', '9781501140973', TRUE),
    (1, 3, 'Harry Potter e o Cálice de Fogo', '2000-07-08', '9780747583660', TRUE),
    (5, 3, 'Eu, Robô', '1950-12-02', '9780553382579', TRUE),
    (4, 3, 'A Casa Torta', '1949-01-01', '9780062073502', TRUE);

-- Inserir Livros de Gênero 'Aventura'
INSERT INTO Livros (id_autor, id_genero, titulo, data_publicacao, isbn, disponibilidade) 
VALUES 
    (1, 4, 'Harry Potter e o Prisioneiro de Azkaban', '1999-07-08', '9780747542155', TRUE),
    (2, 4, 'A Clash of Kings', '1999-03-04', '9780553103553', TRUE),
    (3, 4, 'A Torre Negra', '1982-06-10', '9780452282994', TRUE),
    (4, 4, 'O Assassinato de Roger Ackroyd', '1926-01-01', '9780062073503', TRUE),
    (5, 4, 'O Fim da Eternidade', '1955-02-01', '9780553382580', TRUE);

-- Inserir Livros de Gênero 'Ciência Ficção'
INSERT INTO Livros (id_autor, id_genero, titulo, data_publicacao, isbn, disponibilidade) 
VALUES 
    (5, 5, 'O Homem Bicentenário', '1976-01-01', '9780553382597', TRUE),
    (1, 5, 'Harry Potter e a Ordem da Fênix', '2003-06-21', '9780747551002', TRUE),
    (2, 5, 'O Festim dos Corvos', '2005-10-17', '9780553103577', TRUE),
    (3, 5, 'O Caso dos 3 Souvenirs', '2000-04-02', '9780452282995', TRUE),
    (4, 5, 'A Ilha do Tesouro', '1883-01-01', '9780062073504', TRUE);

-- Inserir Endereços
INSERT INTO Endereco_usuarios (estado, cidade, rua, numero, complemento)
VALUES 
    ('SP', 'São Paulo', 'Rua A', '100', 'Apto 101'),
    ('RJ', 'Rio de Janeiro', 'Avenida B', '200', 'Casa 202'),
    ('MG', 'Belo Horizonte', 'Rua C', '300', 'Bloco 303'),
    ('BA', 'Salvador', 'Avenida D', '400', 'Casa 404'),
    ('PR', 'Curitiba', 'Rua E', '500', 'Apto 505'),
    ('RS', 'Porto Alegre', 'Avenida F', '600', 'Casa 606'),
    ('PE', 'Recife', 'Rua G', '700', 'Bloco 707'),
    ('CE', 'Fortaleza', 'Avenida H', '800', 'Casa 808'),
    ('GO', 'Goiânia', 'Rua I', '900', 'Apto 909'),
    ('SC', 'Florianópolis', 'Avenida J', '1000', 'Casa 1010');

-- Inserir Usuários
INSERT INTO Usuarios (id_endereco, nome, cpf, email, telefone)
VALUES 
    (1, 'Ana Silva', '12345678901', 'ana.silva@email.com', '11999999999'),
    (2, 'Carlos Souza', '23456789012', 'carlos.souza@email.com', '21988888888'),
    (3, 'Maria Oliveira', '34567890123', 'maria.oliveira@email.com', '31977777777'),
    (4, 'Pedro Costa', '45678901234', 'pedro.costa@email.com', '41966666666'),
    (5, 'Fernanda Pereira', '56789012345', 'fernanda.pereira@email.com', '51955555555'),
    (6, 'Lucas Almeida', '67890123456', 'lucas.almeida@email.com', '61944444444'),
    (7, 'Juliana Santos', '78901234567', 'juliana.santos@email.com', '71933333333'),
    (8, 'Roberto Lima', '89012345678', 'roberto.lima@email.com', '81922222222'),
    (9, 'Gabriela Martins', '90123456789', 'gabriela.martins@email.com', '91911111111'),
    (10, 'Rafael Oliveira', '01234567890', 'rafael.oliveira@email.com', '02100000000');

