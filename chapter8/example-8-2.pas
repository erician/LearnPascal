program exam82(input, output);
type
    link = ^litem;
    litem = record
        val: integer;
        next:link;
        end;
var 
    lhead:link;

PROCEDURE lstbuilt(var head:link);
var 
    itep : link;
begin
    new(head);
    itep := head;
    read(itep^.val);
    while not eof do 
    begin
        new(itep^.next);
        itep := itep^.next;
        read(itep^.val)
    end;
    itep^.next:=nil   
end;

PROCEDURE lstwrite(head:link);
var 
    itep:link;
begin
    itep:=head;
    while not (itep=nil) do 
    begin
        writeln(itep^.val);
        itep:=itep^.next
    end
end;

begin
    lhead:=nil;
    lstbuilt(lhead);
    lstwrite(lhead)
end.