program exam712(output, file1);
var 
    i, j:integer;
    ch : char;
    file1:text;
PROCEDURE wrt(n : integer);
var 
    i : integer;
begin
    for i := 1 to n do
        writeln(file1)
end;

begin {main program}
    assign(file1, 'ascii.dat');
    rewrite(file1);
    writeln(file1, ' ':6, 'ASCII code of characters');
    wrt(2);
    write(file1, ' ':4);
    for ch:='0' to '9' do
        write(file1, ch:3);
    wrt(2);
    for ch:=' ' to '~' do
    begin
        j:=ord(ch) mod 10;
        i:=ord(ch) div 10;
        if j=0 then
        begin
            wrt(2);
            write(file1, i:4);
        end;
        if (ch=' ') and (j<>0) then
            write(file1, i:4, ' ':j*3);
        write(file1, ch:3);
    end;
    wrt(2);
    close(file1);
end.

