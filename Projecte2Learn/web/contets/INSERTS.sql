insert into tb_login values (1,'marco@elit2.com','123','1');
insert into tb_login values (2,'jhonatan@elit2.com','123','1');
insert into tb_login values (3,'valmir@elit2.com','123','1');
insert into tb_login values (4,'btunno@elit2.com','123','0');
insert into tb_login values (5,'gilberto@elit2.com','123','0');
insert into tb_login values (6,'sergio@elit2.com','123','0');

select * from tb_login;
SELECT * FROM tb_login WHERE nm_email = 'marco@elit2.com' AND nm_senha= '123';

insert into tb_inst values(1,'Faculdade de Tecnologia de Praia Grande');
insert into tb_inst values(2,'Escola Técnica Estadual de Praia Grande');
insert into tb_inst values(3,'Faculdade de Tecnologia da Baixada Santista');
insert into tb_inst values(4,'Escola Técnica Estadual de São Vicente');

select * from tb_inst;


insert into tb_cur values(1,'Análise e Desenvolvimento de Sistemas');
insert into tb_cur values(2,'Comércio Exterior');
insert into tb_cur values(3,'Gestão Empresarial');
insert into tb_cur values(4,'Processos Químicos');

select * from tb_cur;

