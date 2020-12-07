CREATE SEQUENCE myseq_person
START WITH 1 
INCREMENT BY 1 
NOMAXVALUE;

CREATE OR REPLACE TRIGGER mytrig_person
BEFORE INSERT ON auto_personnel 
FOR EACH ROW
    WHEN (new.auto_personnel_id IS NULL)
BEGIN
  SELECT myseq_person.NEXTVAL
  INTO   :new.auto_personnel_id
  FROM   dual;
END;

CREATE SEQUENCE myseq_auto
START WITH 1 
INCREMENT BY 1 
NOMAXVALUE;

CREATE OR REPLACE TRIGGER mytrig_auto
BEFORE INSERT ON "auto" 
FOR EACH ROW
    WHEN (new.auto_id IS NULL)
BEGIN
  SELECT myseq_auto.NEXTVAL
  INTO   :new.auto_id
  FROM   dual;
END;

CREATE SEQUENCE myseq_routes
START WITH 1 
INCREMENT BY 1 
NOMAXVALUE;

CREATE OR REPLACE TRIGGER mytrig_routes
BEFORE INSERT ON routes 
FOR EACH ROW
    WHEN (new.routes_id IS NULL)
BEGIN
  SELECT myseq_routes.NEXTVAL
  INTO   :new.routes_id
  FROM   dual;
END;

CREATE SEQUENCE myseq_journal
START WITH 1 
INCREMENT BY 1 
NOMAXVALUE;

CREATE OR REPLACE TRIGGER mytrig_journal
BEFORE INSERT ON journal
FOR EACH ROW
    WHEN (new.journal_id IS NULL)
BEGIN
  SELECT myseq_journal.NEXTVAL
  INTO   :new.journal_id
  FROM   dual;
END;
