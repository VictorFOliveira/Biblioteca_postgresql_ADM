create or replace procedure cadastrar_genero(
    p_nome varchar
)
LANGUAGE plpgsqls
as $$

begin

insert into Genero(nome) values (p_nome);
end;
$$;