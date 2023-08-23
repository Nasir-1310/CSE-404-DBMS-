create or replace function circle_area
(radius in number) return number is 
area number :=0;
begin 
area:=3.1416*radius*radius;
 return area;
 
end circle_area;
/




 

