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
			add(t^.cr,n);
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
//procedure postorder(t:tree);
//begin
	//if (t<>nil) then
	//begin
		//postorder(t^.cl);
		//postorder(t^.cr);
		//writeln(t^.data);
	//end;
//end;

procedure inOrder(t:tree);
begin
	if (t<>nil) then begin
		inOrder(t^.cl);
		writeln(t^.data);
		inOrder(t^.cr);
	end;
end;
var
	trees:tree;
 	num:integer;
begin
	trees:=nil;
	readln(num);
	while (num<>50) do
	begin
		add(trees,num);
		readln(num);
	end;
	inOrder(a);
  //postorder(a);
  //preorder(a);
end.
