program LinkedList_InsertBack;
type
  twodata = record
    data1:integer;
    data2:string;
  end;
  node = record
    data: twodata;
    next: list;
  end;
  list = ^node;
procedure readDatas(var da:twodatas);
begin
  readln(da.data1);
  if da.data1 <> 0 then 
    readln(da.data2);
end;
procedure addBack(var L,LST:list;d:twodata);
var
  nw:list;
begin
  new(nw);
  nw^.data:=d;
  nw^.next:=nil;
  if (L=nil) then
  begin
    L:= nw;
  end
  else
    begin
      LST^.next:=nw;
    end;
  LST:=nw;
end;
procedure chargeListBack(var L,LAST:list);
var
  d:twodatas;
begin
  readDatas(d);
  while (d.data1<>0) do
  begin
    addBack(L,LAST,d);
    readDatas(d);
  end;
end;
var
  Li,LAST:list;
  datas:twodata;
begin
  Li:=nil; // the first node begins in not space in dinamic memory.
  LAST:=nil;
  chargeListBack(Li,LAST);
end.
