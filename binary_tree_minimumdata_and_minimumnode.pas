program minimum_and_minimumnode;
type
  tree = ^node;
  node = record
    data:integer;
    cl:tree;
    cr:tree;
  end;
procedure add(var a:tree;n:integer);
begin
	if (t = nil) then
	begin
		new(t);
		t^.data:=n;
		t^.cl:=nil;
		t^.cr:=nil;
	end
	else
	begin
		if (t^.data<=n) then
			add(t^.cl,n);
		else
			add(t^.cr,n);
	end;
end;
procedure chargetree(abb:tree;num:integer);
begin
	writeln('write some number: (50 stop the process)');
  readln(num);
	while (num<>50) do
	begin
		add(abb,num);
		writeln('write some number: (50 stop the process)');
    readln(num);
	end;
 end;
function minimum (t:tree):integer;
begin
	if (t<>nil) then
	begin
		if (t^.cl=nil) then
			minimum:= t^.data;
		else
			minimum:= minimum(t^.cl,min);
	end;
end;
function minimumnode(t:tree):tree;
begin
	if (t<>nil) then
	begin
		if (t=nil) then
			minimumnode:= nil;
		else
		begin
			if (t^.cl=nil) then
				minimumnode:= t;
			else
				minimumnode:= minimum(t^.cl,min);
		end;
	end;
end;
var
	tr,minimnode:tree;
	minim,num:integer;
begin
	tr:=nil;
  chargetree(tr,num);
	minim:=minimum(tr);
	minimnode:=minimumnode(tr);
	writeln(minim);
	writeln(minimnode);
end;
