create or replace function get_sal
(p_id employees.employee_id%TYPE) return number is 
v_sal employees.salary%type :=0;
begin 
select salary
 into v_sal
 from employees
 where employee_id = p_id; 
 return v_sal;
end get_sal;
/

declare
  sal employees.salary%type;
 begin
  sal:=get_sal(100);
  dbms_output.put_line('The salary is: '|| sal);
  end;
  /



 

