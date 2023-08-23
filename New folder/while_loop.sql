DECLARE
  n NUMBER := 10; -- Number of terms in Fibonacci series
  a NUMBER := 0;
  b NUMBER := 1;
  i NUMBER := 1;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Fibonacci Series using while loop:');
  
  WHILE i <= n LOOP
    DBMS_OUTPUT.PUT_LINE(a || ' ');
    a := a + b;
    b := a - b;
    i := i + 1;
  END LOOP;
END;
/
