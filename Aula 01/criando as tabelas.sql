--------------------------------------------------------
--  DDL for Table TECNICO
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TECNICO" 
   (	"ID_TECNICO" NUMBER, 
	"NOME" VARCHAR2(400 BYTE), 
	"DT_NASCIMENTO" DATE, 
	"SALARIO" NUMBER(18,2), 
	"ID_TIME" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SYSTEM"."TECNICO"."ID_TECNICO" IS 'IDENTIFICADOR DO TECNICO';
   COMMENT ON COLUMN "SYSTEM"."TECNICO"."NOME" IS 'NOME DO TECNICO';
   COMMENT ON COLUMN "SYSTEM"."TECNICO"."DT_NASCIMENTO" IS 'DATA DE NASCIMENTO';
   COMMENT ON COLUMN "SYSTEM"."TECNICO"."SALARIO" IS 'SALARIO';
   COMMENT ON COLUMN "SYSTEM"."TECNICO"."ID_TIME" IS 'IDENTIFICADOR DO TIME';
   COMMENT ON TABLE "SYSTEM"."TECNICO"  IS 'TABELA DE TECNICOS';
--------------------------------------------------------
--  DDL for Table TIME
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TIME" 
   (	"ID_TIME" NUMBER, 
	"NOME" VARCHAR2(400 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SYSTEM"."TIME"."ID_TIME" IS 'IDENTIFICADOR DO TIME';
   COMMENT ON COLUMN "SYSTEM"."TIME"."NOME" IS 'NOME DO TIME';
   COMMENT ON TABLE "SYSTEM"."TIME"  IS 'TABELA DE TIMES';
--------------------------------------------------------
--  DDL for Table JOGADOR
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."JOGADOR" 
   (	"ID_JOGADOR" NUMBER, 
	"NOME" VARCHAR2(400 BYTE), 
	"DT_NASCIMENTO" DATE, 
	"SALARIO" NUMBER(18,2), 
	"ID_TIME" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SYSTEM"."JOGADOR"."ID_JOGADOR" IS 'IDENTIFICADOR DO JOGADOR';
   COMMENT ON COLUMN "SYSTEM"."JOGADOR"."NOME" IS 'NOME DO JOGADOR';
   COMMENT ON COLUMN "SYSTEM"."JOGADOR"."DT_NASCIMENTO" IS 'DATA DE NASCIMENTO';
   COMMENT ON COLUMN "SYSTEM"."JOGADOR"."SALARIO" IS 'SALARIO';
   COMMENT ON COLUMN "SYSTEM"."JOGADOR"."ID_TIME" IS 'IDENTIFICADOR DO TIME';
   COMMENT ON TABLE "SYSTEM"."JOGADOR"  IS 'TABELA QUE ARMAZENA DADOS DOS JOGADORES';
--------------------------------------------------------
--  DDL for Index PK_TECNICO
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_TECNICO" ON "SYSTEM"."TECNICO" ("ID_TECNICO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_TIME
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_TIME" ON "SYSTEM"."TIME" ("ID_TIME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_JOGADOR
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_JOGADOR" ON "SYSTEM"."JOGADOR" ("ID_JOGADOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table TECNICO
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TECNICO" MODIFY ("ID_TECNICO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TECNICO" MODIFY ("NOME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TECNICO" MODIFY ("DT_NASCIMENTO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TECNICO" ADD CONSTRAINT "PK_TECNICO" PRIMARY KEY ("ID_TECNICO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TIME
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TIME" MODIFY ("ID_TIME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TIME" ADD CONSTRAINT "PK_TIME" PRIMARY KEY ("ID_TIME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOGADOR
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."JOGADOR" MODIFY ("ID_JOGADOR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."JOGADOR" MODIFY ("NOME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."JOGADOR" MODIFY ("DT_NASCIMENTO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."JOGADOR" MODIFY ("ID_TIME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."JOGADOR" ADD CONSTRAINT "PK_JOGADOR" PRIMARY KEY ("ID_JOGADOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TECNICO
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TECNICO" ADD CONSTRAINT "FK_TIME_TECNICO" FOREIGN KEY ("ID_TIME")
	  REFERENCES "SYSTEM"."TIME" ("ID_TIME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JOGADOR
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."JOGADOR" ADD CONSTRAINT "FK_TIME_JOGADOR" FOREIGN KEY ("ID_TIME")
	  REFERENCES "SYSTEM"."TIME" ("ID_TIME") ENABLE;
