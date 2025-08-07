program LinkedList_InsertTraverse;
type
  twodata = record
    data1:integer;
    data2:string;
  end;
  list = ^nodo;
  nodo = record
    data: twodata;
    sig: list;
  end;
procedure readDatas(da:twodatas);
begin
  readln(da.data1);
  if da.data1 <> 0 then 
    readln(da.data2);
end;
procedure addTraverse(var L:list;d:twodata);
var
  nw:list;
begin
  new(nw);
  nw.data:=d;
  nw.sig:=nil;
  if (L=nil) then
  begin
    L:= nw;
  end
  else
    begin
      
    end;
end;
procedure chargeListTraverse(L:list);
var
  d:twodatas;
begin
  readDatas(d);
  while (d.data1<>0) do
  begin
    addTraverse(L,d);
    readDatas(d);
  end;
end;
var
  Li:list;
  datas:twodata;
begin
  Li:=nil; // the first node begins in not space in dinamic memory.
  chargeListTraverse(Li);
end.
