DECLARE
  n NUMBER := 10; 
  a NUMBER := 0;
  b NUMBER := 1;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Fibonacci Series using for loop:');
  
  FOR i IN 1..n LOOP
    DBMS_OUTPUT.PUT(a || ' ');
    a := a + b;
    b := a - b;
  END LOOP;
END;
/
