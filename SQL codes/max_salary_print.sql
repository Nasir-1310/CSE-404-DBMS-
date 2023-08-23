declare
 salary1 int;
 salary2 int;
 salary3 int;
 max_salary int;
begin
 --dbms_output.put_line('Enter three number');
 select salary into salary1 from employees where employee_id=&employees_id1;
 select salary into salary2 from employees where employee_id=&employees_id2;
 select salary into salary3 from employees where employee_id=&employees_id3;


 

 max_salary:=salary1;

 if salary2>max_salary
    then max_salary:=salary2;
    end if;

if salary3>max_salary 
  then max_salary:=salary3;
  end if;

  dbms_output.put_line('The max value is ' || max_salary);
end;
/