-- Gerado por Oracle SQL Developer Data Modeler 4.0.2.840
--   em:        2014-06-01 01:14:31 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g




CREATE TABLE tb_altern
  (
    cd_altern             NUMBER NOT NULL ,
    ds_altern             VARCHAR2 (100) ,
    tb_questao_cd_questao NUMBER NOT NULL
  ) ;
ALTER TABLE tb_altern ADD CONSTRAINT tb_alternativa_PK PRIMARY KEY ( tb_questao_cd_questao, cd_altern ) ;

CREATE TABLE tb_alu
  (
    cd_alu                     NUMBER NOT NULL ,
    nm_alu                     VARCHAR2 (100) ,
    tb_turma_cd_turma          NUMBER NOT NULL ,
    tb_login_cd_login          NUMBER NOT NULL ,
    cd_niv                     NUMBER ,
    tb_turma_tb_curso_cd_curso NUMBER NOT NULL
  ) ;
CREATE UNIQUE INDEX tb_aluno__IDX ON tb_alu
  (
    tb_login_cd_login ASC
  )
  ;
  ALTER TABLE tb_alu ADD CONSTRAINT tb_aluno_PK PRIMARY KEY ( cd_alu ) ;

CREATE TABLE tb_avali
  (
    cd_avali                NUMBER NOT NULL ,
    tb_conteudo_cd_conteudo NUMBER NOT NULL ,
    tb_imagem_cd_imagem     NUMBER NOT NULL ,
    nm_aval                 VARCHAR2 (15) ,
    tb_status_cd_status     NUMBER NOT NULL
  ) ;
CREATE UNIQUE INDEX tb_avaliacao__IDX ON tb_avali
  (
    tb_status_cd_status ASC
  )
  ;
CREATE UNIQUE INDEX tb_avaliacao__IDXv1 ON tb_avali
  (
    tb_imagem_cd_imagem ASC
  )
  ;
  ALTER TABLE tb_avali ADD CONSTRAINT tb_avaliacao_PK PRIMARY KEY ( cd_avali ) ;

CREATE TABLE tb_avali_quest
  (
    tb_avaliacao_cd_avaliacao NUMBER NOT NULL ,
    tb_questao_cd_questao     NUMBER NOT NULL
  ) ;
ALTER TABLE tb_avali_quest ADD CONSTRAINT tb_avaliacao_questao__IDX PRIMARY KEY ( tb_avaliacao_cd_avaliacao, tb_questao_cd_questao ) ;

CREATE TABLE tb_cont
  (
    cd_cont                   NUMBER NOT NULL ,
    tb_professor_cd_professor NUMBER NOT NULL ,
    tb_professor_cd_cpf       NUMBER NOT NULL ,
    tb_imagem_cd_imagem       NUMBER NOT NULL ,
    nm_cont                   VARCHAR2 (50) ,
    ds_cont CLOB ,
    tb_status_cd_status NUMBER NOT NULL
  ) ;
CREATE UNIQUE INDEX tb_conteudo__IDX ON tb_cont
  (
    tb_status_cd_status ASC
  )
  ;
CREATE UNIQUE INDEX tb_conteudo__IDXv1 ON tb_cont
  (
    tb_imagem_cd_imagem ASC
  )
  ;
  ALTER TABLE tb_cont ADD CONSTRAINT tb_conteudo_PK PRIMARY KEY ( cd_cont ) ;

CREATE TABLE tb_cur
  ( cd_cur NUMBER NOT NULL , nm_cur VARCHAR2 (45)
  ) ;
ALTER TABLE tb_cur ADD CONSTRAINT tb_curso_PK PRIMARY KEY ( cd_cur ) ;

CREATE TABLE tb_cur_discip
  (
    tb_curso_cd_curso           NUMBER NOT NULL ,
    tb_disciplina_cd_disciplina NUMBER NOT NULL
  ) ;
ALTER TABLE tb_cur_discip ADD CONSTRAINT tb_curso_disciplina__IDX PRIMARY KEY ( tb_curso_cd_curso, tb_disciplina_cd_disciplina ) ;

CREATE TABLE tb_cur_perio
  (
    tb_curso_cd_curso     NUMBER NOT NULL ,
    tb_periodo_cd_periodo NUMBER (3) NOT NULL
  ) ;
ALTER TABLE tb_cur_perio ADD CONSTRAINT tb_curso_periodo__IDX PRIMARY KEY ( tb_curso_cd_curso, tb_periodo_cd_periodo ) ;

CREATE TABLE tb_discip
  (
    cd_discip NUMBER NOT NULL ,
    nm_discip VARCHAR2 (45)
  ) ;
ALTER TABLE tb_discip ADD CONSTRAINT tb_disciplina_PK PRIMARY KEY ( cd_discip ) ;

CREATE TABLE tb_discip_prof
  (
    tb_professor_cd_professor   NUMBER NOT NULL ,
    tb_professor_cd_cpf         NUMBER NOT NULL ,
    tb_disciplina_cd_disciplina NUMBER NOT NULL
  ) ;
ALTER TABLE tb_discip_prof ADD CONSTRAINT tb_disciplina_professor__IDX PRIMARY KEY ( tb_professor_cd_professor, tb_professor_cd_cpf, tb_disciplina_cd_disciplina ) ;

CREATE TABLE tb_imag
  (
    cd_imag NUMBER NOT NULL ,
    nm_imag VARCHAR2 (100) ,
    ds_url  VARCHAR2 (100)
  ) ;
ALTER TABLE tb_imag ADD CONSTRAINT tb_imagem_PK PRIMARY KEY ( cd_imag ) ;

CREATE TABLE tb_inst
  ( cd_int NUMBER NOT NULL , nm_inst VARCHAR2 (50)
  ) ;
ALTER TABLE tb_inst ADD CONSTRAINT tb_instituicao_PK PRIMARY KEY ( cd_int ) ;

CREATE TABLE tb_inst_cur
  (
    tb_instituicao_cd_intituicao NUMBER NOT NULL ,
    tb_curso_cd_curso            NUMBER NOT NULL
  ) ;
ALTER TABLE tb_inst_cur ADD CONSTRAINT tb_instituicao_curso__IDX PRIMARY KEY ( tb_instituicao_cd_intituicao, tb_curso_cd_curso ) ;

CREATE TABLE tb_login
  (
    cd_login NUMBER NOT NULL ,
    nm_email VARCHAR2 (50) ,
    nm_senha VARCHAR2 (32) ,
    tp_login NUMBER (1)
  ) ;
ALTER TABLE tb_login ADD CONSTRAINT tb_login_PK PRIMARY KEY ( cd_login ) ;

CREATE TABLE tb_perio
  (
    cd_perio NUMBER (3) NOT NULL ,
    nm_perio VARCHAR2 (15)
  ) ;
ALTER TABLE tb_perio ADD CONSTRAINT tb_periodo_PK PRIMARY KEY ( cd_perio ) ;

CREATE TABLE tb_prof
  (
    cd_prof           NUMBER NOT NULL ,
    nm_prof           VARCHAR2 (100) ,
    cd_cpf            NUMBER NOT NULL ,
    tb_login_cd_login NUMBER NOT NULL
  ) ;
CREATE UNIQUE INDEX tb_professor__IDX ON tb_prof
  (
    tb_login_cd_login ASC
  )
  ;
  ALTER TABLE tb_prof ADD CONSTRAINT tb_professor_PK PRIMARY KEY ( cd_prof, cd_cpf ) ;

CREATE TABLE tb_quest
  (
    cd_quest NUMBER NOT NULL ,
    nm_quest VARCHAR2 (50) ,
    ds_quest VARCHAR2 (1000) ,
    ic_resp  NUMBER ,
    cd_niv   NUMBER
  ) ;
ALTER TABLE tb_quest ADD CONSTRAINT tb_questao_PK PRIMARY KEY ( cd_quest ) ;

CREATE TABLE tb_stat
  (
    cd_stat NUMBER NOT NULL ,
    ic_stat CHAR (1) ,
    cd_alu  NUMBER
  ) ;
ALTER TABLE tb_stat ADD CONSTRAINT tb_status_PK PRIMARY KEY ( cd_stat ) ;

CREATE TABLE tb_tur
  (
    cd_tur            NUMBER NOT NULL ,
    nm_tur            VARCHAR2 (10) ,
    tb_curso_cd_curso NUMBER NOT NULL
  ) ;
ALTER TABLE tb_tur ADD CONSTRAINT tb_turma_PK PRIMARY KEY ( cd_tur, tb_curso_cd_curso ) ;

ALTER TABLE tb_cur_perio ADD CONSTRAINT FK_ASS_10 FOREIGN KEY ( tb_periodo_cd_periodo ) REFERENCES tb_perio ( cd_perio ) ;

ALTER TABLE tb_discip_prof ADD CONSTRAINT FK_ASS_12 FOREIGN KEY ( tb_professor_cd_professor, tb_professor_cd_cpf ) REFERENCES tb_prof ( cd_prof, cd_cpf ) ;

ALTER TABLE tb_discip_prof ADD CONSTRAINT FK_ASS_13 FOREIGN KEY ( tb_disciplina_cd_disciplina ) REFERENCES tb_discip ( cd_discip ) ;

ALTER TABLE tb_inst_cur ADD CONSTRAINT FK_ASS_16 FOREIGN KEY ( tb_instituicao_cd_intituicao ) REFERENCES tb_inst ( cd_int ) ;

ALTER TABLE tb_inst_cur ADD CONSTRAINT FK_ASS_17 FOREIGN KEY ( tb_curso_cd_curso ) REFERENCES tb_cur ( cd_cur ) ;

ALTER TABLE tb_avali_quest ADD CONSTRAINT FK_ASS_2 FOREIGN KEY ( tb_avaliacao_cd_avaliacao ) REFERENCES tb_avali ( cd_avali ) ;

ALTER TABLE tb_avali_quest ADD CONSTRAINT FK_ASS_3 FOREIGN KEY ( tb_questao_cd_questao ) REFERENCES tb_quest ( cd_quest ) ;

ALTER TABLE tb_cur_discip ADD CONSTRAINT FK_ASS_7 FOREIGN KEY ( tb_curso_cd_curso ) REFERENCES tb_cur ( cd_cur ) ;

ALTER TABLE tb_cur_discip ADD CONSTRAINT FK_ASS_8 FOREIGN KEY ( tb_disciplina_cd_disciplina ) REFERENCES tb_discip ( cd_discip ) ;

ALTER TABLE tb_cur_perio ADD CONSTRAINT FK_ASS_9 FOREIGN KEY ( tb_curso_cd_curso ) REFERENCES tb_cur ( cd_cur ) ;

ALTER TABLE tb_altern ADD CONSTRAINT tb_alternativa_tb_questao_FK FOREIGN KEY ( tb_questao_cd_questao ) REFERENCES tb_quest ( cd_quest ) ;

ALTER TABLE tb_alu ADD CONSTRAINT tb_aluno_tb_login_FK FOREIGN KEY ( tb_login_cd_login ) REFERENCES tb_login ( cd_login ) ;

ALTER TABLE tb_alu ADD CONSTRAINT tb_aluno_tb_turma_FK FOREIGN KEY ( tb_turma_cd_turma, tb_turma_tb_curso_cd_curso ) REFERENCES tb_tur ( cd_tur, tb_curso_cd_curso ) ;

ALTER TABLE tb_avali ADD CONSTRAINT tb_avaliacao_tb_conteudo_FK FOREIGN KEY ( tb_conteudo_cd_conteudo ) REFERENCES tb_cont ( cd_cont ) ;

ALTER TABLE tb_avali ADD CONSTRAINT tb_avaliacao_tb_imagem_FK FOREIGN KEY ( tb_imagem_cd_imagem ) REFERENCES tb_imag ( cd_imag ) ;

ALTER TABLE tb_avali ADD CONSTRAINT tb_avaliacao_tb_status_FK FOREIGN KEY ( tb_status_cd_status ) REFERENCES tb_stat ( cd_stat ) ;

ALTER TABLE tb_cont ADD CONSTRAINT tb_conteudo_tb_imagem_FK FOREIGN KEY ( tb_imagem_cd_imagem ) REFERENCES tb_imag ( cd_imag ) ;

ALTER TABLE tb_cont ADD CONSTRAINT tb_conteudo_tb_professor_FK FOREIGN KEY ( tb_professor_cd_professor, tb_professor_cd_cpf ) REFERENCES tb_prof ( cd_prof, cd_cpf ) ;

ALTER TABLE tb_cont ADD CONSTRAINT tb_conteudo_tb_status_FK FOREIGN KEY ( tb_status_cd_status ) REFERENCES tb_stat ( cd_stat ) ;

ALTER TABLE tb_prof ADD CONSTRAINT tb_professor_tb_login_FK FOREIGN KEY ( tb_login_cd_login ) REFERENCES tb_login ( cd_login ) ;

ALTER TABLE tb_tur ADD CONSTRAINT tb_turma_tb_curso_FK FOREIGN KEY ( tb_curso_cd_curso ) REFERENCES tb_cur ( cd_cur ) ;


-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            19
-- CREATE INDEX                             6
-- ALTER TABLE                             40
-- CREATE VIEW                              0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
