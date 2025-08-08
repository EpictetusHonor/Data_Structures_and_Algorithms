program trees;
type
	tree = ^node;
	node = record
		data:integer;
		childl:tree;
		childr:tree;
		end;
procedure add(var t:tree;n:integer);
begin
	if (t = nil) then
	begin
		new(t);
		t^.data:=n;
		t^.childl:=nil;
		t^.childr:=nil;
	end
	else
	begin
		if (t^.data<=n) then
			add(t^.childl,n);
		else
			add(t^.childr,n);
	end;
end;
var
	abb:tree;
	num:integer;
begin
	abb:=nil;
	readln(num);
	while (num<>50) do
	begin
		add(abb,num);
		readln(num);
	end;
end.
