-- create nome_do_indice on nome_Tabela(nome_coluna) 
create index idx_usuarios_cpf on Usuarios(cpf);
create index idx_autores_nome on Autores(nome);
create index idx_genero_nome on Genero(nome);
create index idx_endereco_cidade on Endereco_usuarios(cidade);
create index idx_endereco_complemento_null on Endereco_usuarios(complemento) where complemento is null;
create index idx_usuarios_email on Usuarios(email);
create index idx_livros_isbn on Livros(isbn);
create index idx_livros_disponivel on Livros(titulo, disponibilidade) where disponibilidade = TRUE;

