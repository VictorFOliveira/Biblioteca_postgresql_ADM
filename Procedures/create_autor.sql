create or replace PROCEDURE cadastrar_autor(
    p_nome varchar
)
language plpgsql
as $$

BEGIN

insert into Autores(nome) values (p_nome);
end;
$$;