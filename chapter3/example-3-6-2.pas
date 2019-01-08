program exam362(output);
var i, j, p : integer;
begin
    write('*':4, ' ':4);
    for i:=1 to 9 do
        write(i : 4);
    for i:=1 to 2 do
        writeln;
    for i:=1 to 9 do
    begin
        write(i:4, ' ':4);
        for j:=1 to i do
        begin
            p := i*j;
            write(p:4);
        end;
        for j:=1 to 2 do 
            writeln
    end
end.