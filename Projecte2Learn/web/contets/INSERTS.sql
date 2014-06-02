-- select * from tb_prof p join tb_discip_prof dp on(dp.tb_prof_cd_prof=p.cd_prof)
-- join tb_disci d on(dp.tb_discip_cd_discip=d.cd_discip)
-- join tb_curso_disci cd on(cd.tb_curso_disci_cd_disci=d.cd_disci)
-- join tb_curso c on(c.cd_curso=cd.tb_curso_cd_curso)
-- join tb_tur t on(t.cd_tur=c.tb_curso_cd_curso)
-- join tb_aluno a on(a.tb_turma_cd_turma=t.cd_turma)
-- where a.cd_aluno=1

insert into tb_login values (1,'marco@elit2.com','123','1');
insert into tb_login values (2,'jhonatan@elit2.com','123','1');
insert into tb_login values (3,'valmir@elit2.com','123','1');

INSERT INTO tb_prof VALUES(1,'Marco Aurélio Lima',123456789,1);
INSERT INTO tb_prof VALUES(2,'Valmir Santos',123456789,2);
INSERT INTO tb_prof VALUES(3,'Jhonatan Rodrigues',123456789,3);

SELECT * FROM tb_prof

insert into tb_login values (4,'brunno@elit2.com','123','0');
insert into tb_login values (5,'gilberto@elit2.com','123','0');
insert into tb_login values (6,'sergio@elit2.com','123','0');

select * from tb_login;


insert into tb_inst values(1,'Faculdade de Tecnologia de Praia Grande');
insert into tb_inst values(2,'Escola Técnica Estadual de Praia Grande');
insert into tb_inst values(3,'Faculdade de Tecnologia da Baixada Santista');
insert into tb_inst values(4,'Escola Técnica Estadual de São Vicente');

select * from tb_inst;

insert into tb_cur values(1,'Análise e Desenvolvimento de Sistemas');
insert into tb_cur values(2,'Comércio Exterior');
insert into tb_cur values(3,'Gestão Empresarial');
insert into tb_cur values(4,'Processos Químicos');

select * from tb_inst;


insert into tb_tur values(1,'ADS 1 2012',1);

select * from tb_tur;

insert into tb_alu values(1, 'Brunno Soto', 1, 4, 1, 1);
insert into tb_alu values(2, 'Gilberto Fioravante', 1, 5, 1, 1);
insert into tb_alu values(3, 'Sérgio Fortuna', 1, 6, 1, 1);

select * from tb_alu;