# Sistema de Biblioteca com PostgreSQL

Este repositório contém a estrutura do banco de dados e scripts SQL para gerenciar um sistema de biblioteca. A aplicação foi construída utilizando o PostgreSQL para gerenciar livros, autores, usuários, reservas, empréstimos e multas.

## Estrutura do Banco de Dados

Abaixo está a descrição das principais tabelas criadas para o banco de dados.

### Tabelas

1. **Livros**
   - Contém informações sobre os livros da biblioteca.
   - Campos: `id_livro`, `id_autor`, `id_genero`, `titulo`, `data_publicacao`, `isbn`, `disponibilidade`.

2. **Autores**
   - Contém informações sobre os autores dos livros.
   - Campos: `id_autor`, `nome`.

3. **Gênero**
   - Contém os diferentes gêneros de livros.
   - Campos: `id_genero`, `nome`.

4. **Usuários**
   - Contém informações dos usuários que podem realizar reservas e empréstimos.
   - Campos: `id_usuario`, `id_endereco`, `nome`, `cpf`, `email`, `telefone`.

5. **Endereço_usuarios**
   - Contém os endereços dos usuários.
   - Campos: `id_endereco`, `estado`, `cidade`, `rua`, `numero`, `complemento`.

6. **Emprestimos**
   - Controla os empréstimos dos livros aos usuários.
   - Campos: `id_emprestimo`, `id_usuario`, `id_livro`, `data_emprestimo`, `data_devolucao`.

7. **Reservas**
   - Controla as reservas feitas pelos usuários para livros.
   - Campos: `id_reserva`, `id_usuario`, `id_livro`, `data_reserva`, `status_reserva`.

8. **Multas**
   - Controla as multas geradas pelos usuários em caso de atraso na devolução dos livros.
   - Campos: `id_multa`, `id_emprestimo`, `valor_multa`, `status_multa`.

### Procedures Criadas

O sistema possui várias procedures para facilitar a inserção de dados, como o cadastro de livros, autores, usuários, entre outros.

#### 1. **Cadastrar Usuário**
   - **Procedure**: `cadastrar_usuario`
   - **Descrição**: Cadastra um novo usuário e seu respectivo endereço.
   - **Parâmetros**: `p_nome`, `p_cpf`, `p_email`, `p_telefone`, `p_estado`, `p_cidade`, `p_rua`, `p_numero`, `p_complemento`.

#### 2. **Cadastrar Autor**
   - **Procedure**: `cadastrar_autor`
   - **Descrição**: Cadastra um novo autor.
   - **Parâmetro**: `p_nome`.

#### 3. **Cadastrar Gênero**
   - **Procedure**: `cadastrar_genero`
   - **Descrição**: Cadastra um novo gênero de livro.
   - **Parâmetro**: `p_nome`.

#### 4. **Cadastrar Livro**
   - **Procedure**: `cadastrar_livro`
   - **Descrição**: Cadastra um novo livro na biblioteca.
   - **Parâmetros**: `p_id_autor`, `p_id_genero`, `p_titulo`, `p_data_publicacao`, `p_isbn`, `p_disponibilidade`.

### Índices Criados

-- create nome_do_indice on nome_Tabela(nome_coluna) 

create index idx_usuarios_cpf on Usuarios(cpf);
create index idx_autores_nome on Autores(nome);
create index idx_genero_nome on Genero(nome);
create index idx_endereco_cidade on Endereco_usuarios(cidade);
create index idx_endereco_complemento_null on Endereco_usuarios(complemento) where complemento is null;
create index idx_usuarios_email on Usuarios(email);
create index idx_livros_isbn on Livros(isbn);
create index idx_livros_disponivel on Livros(titulo, disponibilidade) where disponibilidade = TRUE;

