program arboles;
type
	arbol = ^nodo;
	nodo = record
		HijoIz:arbol;
		HijoDer:arbol;
		end;
var
	a:arbol;
	num:integer;

//procedure preorden(a:arbol);
//begin
	//if (a<>nil) then
	//begin
		//writeln(a^.data);
		//preorden(a^.hi);
		//preorden(a^.hd);
	//end;
//end;
//procedure postorden(a:arbol);
//begin
	//if (a<>nil) then
	//begin
		//postorden(a^.hi);
		//postorden(a^.hd);
		//writeln(a^.data);
	//end;
//end;

procedure enOrden(a:arbol);
begin
	if (a<>nil) then begin
		enOrden(a^.hi);
		writeln(a^.dato);
		enOrden(a^.hd);
	end;
end;
begin
	a:=nil;
	read(num);
	while (num<>50) do
	begin
		agregar(a,num); //se dispone
		read(num);
	end;
	enOrden(a);
  //postorden(a);
  //preorden(a);
end;
