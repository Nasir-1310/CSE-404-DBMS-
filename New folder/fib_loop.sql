DECLARE
  n NUMBER := 10; 
  a NUMBER := 0;
  b NUMBER := 1;
  i NUMBER := 1;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Fibonacci Series using loop:');
  
  LOOP
    DBMS_OUTPUT.PUT(a || ' ');
    EXIT WHEN i > n;
    a := a + b;
    b := a - b;
    i := i + 1;
  END LOOP;
END;
/
