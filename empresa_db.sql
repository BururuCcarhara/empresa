create database empresa_db;
use empresa_db;

create user 'funcionario'@'localhost' identified by '123';
create user 'gerente'@'localhost' identified by '456';
create user 'admin'@'localhost' identified by '789';

grant select ON empresa_db.* to 'funcionario'@'localhost';
grant insert ON empresa_db.* to 'gerente'@'localhost';
grant select ON empresa_db.* to 'gerente'@'localhost';
grant delete ON empresa_db.* to 'gerente'@'localhost';
grant all privileges ON empresa_db to 'admin'@'localhost';

revoke insert ON empresas_db from 'gerente'@'localhost';

rename user 'funcionario'@'localhost' to 'assistente'@'localhost';

alter user 'gerente'@'localhost' identified by 'nova_senha_gerente';

show grants;

drop user 'assistente'@'localhost';
