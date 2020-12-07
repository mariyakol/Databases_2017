--------------------------------------------------------
--  File created - среда-марта-06-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table auto
--------------------------------------------------------

  CREATE TABLE "C##TEST_USER"."auto" 
   (	"AUTO_ID" NUMBER(*,0), 
	"num" VARCHAR2(20 BYTE), 
	"COLOR" VARCHAR2(20 BYTE), 
	"mark" VARCHAR2(20 BYTE), 
	"AUTO_PERSONNEL_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AUTO_PERSONNEL
--------------------------------------------------------

  CREATE TABLE "C##TEST_USER"."AUTO_PERSONNEL" 
   (	"AUTO_PERSONNEL_ID" NUMBER(*,0), 
	"FIRST_NAME" VARCHAR2(20 BYTE), 
	"LAST_NAME" VARCHAR2(20 BYTE), 
	"PATHER_NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JOURNAL
--------------------------------------------------------

  CREATE TABLE "C##TEST_USER"."JOURNAL" 
   (	"JOURNAL_ID" NUMBER(*,0), 
	"TIME_OUT" TIMESTAMP (3), 
	"TIME_IN" TIMESTAMP (3), 
	"AUTO_ID" NUMBER(*,0), 
	"ROUTES_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROUTES
--------------------------------------------------------

  CREATE TABLE "C##TEST_USER"."ROUTES" 
   (	"ROUTES_ID" NUMBER(*,0), 
	"name" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into C##TEST_USER."auto"
SET DEFINE OFF;
REM INSERTING into C##TEST_USER.AUTO_PERSONNEL
SET DEFINE OFF;
REM INSERTING into C##TEST_USER.JOURNAL
SET DEFINE OFF;
REM INSERTING into C##TEST_USER.ROUTES
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index AUTO_PERSONNEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEST_USER"."AUTO_PERSONNEL_PK" ON "C##TEST_USER"."AUTO_PERSONNEL" ("AUTO_PERSONNEL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AUTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEST_USER"."AUTO_PK" ON "C##TEST_USER"."auto" ("AUTO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JOURNAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEST_USER"."JOURNAL_PK" ON "C##TEST_USER"."JOURNAL" ("JOURNAL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ROUTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##TEST_USER"."ROUTES_PK" ON "C##TEST_USER"."ROUTES" ("ROUTES_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table auto
--------------------------------------------------------

  ALTER TABLE "C##TEST_USER"."auto" MODIFY ("AUTO_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."auto" MODIFY ("num" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."auto" MODIFY ("COLOR" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."auto" MODIFY ("mark" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."auto" MODIFY ("AUTO_PERSONNEL_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."auto" ADD CONSTRAINT "AUTO_PK" PRIMARY KEY ("AUTO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTO_PERSONNEL
--------------------------------------------------------

  ALTER TABLE "C##TEST_USER"."AUTO_PERSONNEL" MODIFY ("AUTO_PERSONNEL_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."AUTO_PERSONNEL" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."AUTO_PERSONNEL" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."AUTO_PERSONNEL" MODIFY ("PATHER_NAME" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."AUTO_PERSONNEL" ADD CONSTRAINT "AUTO_PERSONNEL_PK" PRIMARY KEY ("AUTO_PERSONNEL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOURNAL
--------------------------------------------------------

  ALTER TABLE "C##TEST_USER"."JOURNAL" MODIFY ("JOURNAL_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."JOURNAL" MODIFY ("TIME_OUT" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."JOURNAL" MODIFY ("TIME_IN" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."JOURNAL" MODIFY ("AUTO_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."JOURNAL" MODIFY ("ROUTES_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."JOURNAL" ADD CONSTRAINT "JOURNAL_PK" PRIMARY KEY ("JOURNAL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ROUTES
--------------------------------------------------------

  ALTER TABLE "C##TEST_USER"."ROUTES" MODIFY ("ROUTES_ID" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."ROUTES" MODIFY ("name" NOT NULL ENABLE);
  ALTER TABLE "C##TEST_USER"."ROUTES" ADD CONSTRAINT "ROUTES_PK" PRIMARY KEY ("ROUTES_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table auto
--------------------------------------------------------

  ALTER TABLE "C##TEST_USER"."auto" ADD CONSTRAINT "FK_AUTO_PERSONNEL" FOREIGN KEY ("AUTO_PERSONNEL_ID")
	  REFERENCES "C##TEST_USER"."AUTO_PERSONNEL" ("AUTO_PERSONNEL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JOURNAL
--------------------------------------------------------

  ALTER TABLE "C##TEST_USER"."JOURNAL" ADD CONSTRAINT "FK_AUTO" FOREIGN KEY ("AUTO_ID")
	  REFERENCES "C##TEST_USER"."auto" ("AUTO_ID") ENABLE;
  ALTER TABLE "C##TEST_USER"."JOURNAL" ADD CONSTRAINT "FK_ROUTES" FOREIGN KEY ("ROUTES_ID")
	  REFERENCES "C##TEST_USER"."ROUTES" ("ROUTES_ID") ENABLE;
