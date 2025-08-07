program Two_Maximum_Minimum;
type
  maximums = record;
    max1:integer;
    max2:integer;
  end;
procedure maximum(var m:maximums;num:integer);
begin
  if num >= m.max1 then
  begin
    m.max2:=m.max1;
    m.max1:=num;
  end
  else
  begin
      	if num >= m.max2 then
          m.max2:=num;
  end;
end;
var
  max:maximums;
  number,count:integer;
begin
  max.max1:=-32768;
  max.max2:=-32768;
  writeln('------"Maximum/minimum program"------');
  writeln('Write a number: (to stop or don"t inicialize the loop write the number: -32768)');
  readln(number);
  count:=0;
  while (number<>-32768) do
  begin
    maximum(max,number);
    readln(number);
    count:=count+1;
  end;
  
  if (count>=2) then
  begin
    writeln('The maximums numbers are:);
    writeln('First: ', max.max1);
    writeln('Second: ', max.max2);
  end
  else
  begin
    if (count=0) then
    begin
      writeln('Please don’t hesitate to reopen the program whenever you need it.');
    end
    else
    begin
      if (count=1) then
        writeln('You putted only one number: ',max.max1);
    end;
  end;
end;
