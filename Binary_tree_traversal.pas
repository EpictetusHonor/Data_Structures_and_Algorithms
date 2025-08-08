program tree;
type
	tree = ^node;
	node = record
 		data:integer;
		cl:tree;
		cr:tree;
		end;
procedure add(var t:tree;n:integer);
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
			agregar(t^.cr,n);
	end;
end;
//procedure preorder(t:tree);
//begin
	//if (t<>nil) then
	//begin
		//writeln(t^.data);
		//preorder(t^.cl);
		//preorder(t^.cr);
	//end;
//end;
//procedure postorder(t:treee);
//begin
	//if (t<>nil) then
	//begin
		//postorden(t^.cl);
		//postorden(t^.cr);
		//writeln(t^.data);
	//end;
//end;

procedure enOrden(t:tree);
begin
	if (t<>nil) then begin
		enOrden(t^.cl);
		writeln(t^.data);
		enOrden(t^.cr);
	end;
end;
var
	trees:tree;
 	num:integer;
begin
	trees:=nil;
	read(num);
	while (num<>50) do
	begin
		add(trees,num);
		read(num);
	end;
	enOrden(a);
  //postorden(a);
  //preorden(a);
end;
