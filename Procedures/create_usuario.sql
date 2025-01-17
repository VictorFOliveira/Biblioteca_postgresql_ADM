-- cadastrar um usuários 
create or replace procedure cadastrar_usuario(
    p_nome varchar,
    p_cpf varchar,
    p_email varchar,
    p_telefone varchar,
    p_estado char(2),
    p_cidade varchar,
    p_rua varchar,
    p_numero varchar,
    p_complemento varchar
)
LANGUAGE plpgsql
as $$ 
declare 
v_id_endereco int;
begin
-- inserindo dados do endereco do usuario
insert into endereco_usuarios(estado,cidade, rua, numero, complemento)
values (p_estado, p_cidade, p_rua, p_numero, p_complemento)
returning id_endereco into v_id_endereco;

-- inserindo o usuário
insert into Usuarios(nome, cpf, email, telefone, id_endereco)
values (p_nome, p_cpf, p_email, p_telefone, v_id_endereco);
end;
$$;


