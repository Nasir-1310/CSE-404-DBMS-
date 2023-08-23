CREATE OR REPLACE PROCEDURE find_min_max_tax_employees AS
  max_tax NUMBER := NULL;
  min_tax NUMBER := NULL;
  max_employee_name VARCHAR2(100);
  min_employee_name VARCHAR2(100);
  employee_name VARCHAR2(100);
  employee_tax NUMBER;
BEGIN
  FOR emp_rec IN (SELECT employee_id, last_name, salary, commission_pct FROM employees WHERE department_id = 100) LOOP
    employee_name := emp_rec.last_name;
    employee_tax := calculate_tax(12 * emp_rec.salary + 12 * (emp_rec.salary * NVL(emp_rec.commission_pct, 0)));
    
    IF max_tax IS NULL OR employee_tax > max_tax THEN
      max_tax := employee_tax;
      max_employee_name := employee_name;
    END IF;
    
    IF min_tax IS NULL OR employee_tax < min_tax THEN
      min_tax := employee_tax;
      min_employee_name := employee_name;
    END IF;
  END LOOP;
  
  DBMS_OUTPUT.PUT_LINE('Employee with maximum tax: ' || max_employee_name || ', Tax: ' || max_tax);
  DBMS_OUTPUT.PUT_LINE('Employee with minimum tax: ' || min_employee_name || ', Tax: ' || min_tax);
END;
/
