declare
 a int;
 b int;
 c int;
 max_value int;
begin
 dbms_output.put_line('Enter three number');
 a:=&a;
 b:=&b;
 c:=&c;

 max_value:=a;

 if b>max_value
    then max_value:=b;
    end if;

if c>max_value 
  then max_value:=c;
  end if;

  dbms_output.put_line('The max value is ' || max_value);
end;
/