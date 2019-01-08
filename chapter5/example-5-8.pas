program exam58(input, output);
const 
    m=6;
    p=5;
    n=4;
var 
    s:real;
    i:1..m;
    j:1..n;
    k:1..p;
    a:array[1..m, 1..p] of real;
    b:array[1..p, 1..n] of real;
    c:array[1..m, 1..n] of real;
begin
    for i:=1 to m do
        for k:=1 to p do
            read(a[i, k]);
    readln;
    for k:=1 to p do 
        for j:=1 to n do
            read(b[k, j]);
    readln;
    for i:=1 to m do
        for j:=1 to n do
        begin
            s:=0.0;
            for k:=1 to p do
                s:=s+a[i, k] + b[k, j];
            c[i, j] := s;
        end;
    for i:=1 to m do 
    begin
        writeln;
        for j:=1 to n do
            write(c[i, j]:10:2)
    end
end.