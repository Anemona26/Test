
--TEMA 9

--- Exercitiul 1

CREATE OR REPLACE TRIGGER TRIGGER1_FLR
BEFORE DELETE ON DEPT_FLR
BEGIN
    IF USER <> 'SCOTT' THEN
        RAISE_APPLICATION_ERROR(-20001, 'Nu puteti sterge informatiile din tabel!');
    END IF;
END;

DELETE FROM DEPT_FLR;



--- Exercitiul 2

CREATE OR REPLACE TRIGGER TRIGGER_FLR
BEFORE UPDATE OF COMMISSION_PCT ON EMP_FLR
FOR EACH ROW
BEGIN
    IF (:NEW.COMMISSION_PCT > 0.5) THEN
        RAISE_APPLICATION_ERROR(-20001, 'Comisionul nu trebuie sa depaseasca 50% din salariu');
    END IF;
END;


