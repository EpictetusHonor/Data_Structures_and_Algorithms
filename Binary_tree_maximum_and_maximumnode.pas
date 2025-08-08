program maximum_and_maximumnode;
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
function maximum (t:tree):integer;
begin
	if (t<>nil) then
	begin
		if (t^.cr=nil) then
			maximum:= t^.data;
		else
			maximum:= maximum(t^.cr,maximum);
	end;
end;
function maximumnode(t:tree):tree;
begin
	if (t<>nil) then
	begin
		if (t=nil) then
			maximumnode:= nil;
		else
		begin
			if (t^.cr=nil) then
				maximumnode:= t;
			else
				maximumnode:= maximum(t^.cr,maximumnode);
		end;
	end;
end;
var
	tr,maximnode:tree;
	maxim,num:integer;
begin
	tr:=nil;
  chargetree(tr,num);
	maxim:=maximum(tr);
	maximnode:=maximumnode(tr);
	writeln(maxim);
	writeln(maximnode);
end.
