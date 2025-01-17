create or replace procedure cadastrar_livro(
    p_id_autor integer,
    p_id_genero integer,
    p_titulo varchar,
    p_data_publicacao date,
    p_isbn varchar,
    p_disponibilidade boolean 
)
language plpgsql
as $$
BEGIN

insert into Livros(id_autor, id_genero, titulo, data_publicacao, isbn, disponibilidade)
values (p_id_autor, p_id_genero, p_titulo, p_data_publicacao, p_isbn, p_disponibilidade);

end;
$$;
