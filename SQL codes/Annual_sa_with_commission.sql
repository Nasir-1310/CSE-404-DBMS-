create or replace function calculate_tax(p_val in number)
return number is 
begin
  return p_val * 0.05; 
end calculate_tax;
/

select employee_id, last_name, salary, calculate_tax(12*salary+12*(salary*nvl(commission_pct,0))) calculated_tax 
from employees
where department_id = 100; 
