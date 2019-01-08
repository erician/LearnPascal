program exam72(input, output);
const 
    max = 255;
type
    intset = set of 2..max;
var 
    m:integer;
    p:1..max;
    sieve, prime:intset;
begin
    sieve := [2..max];
    prime := [];
    p := 1;
    repeat
        repeat
            p:=succ(p)
        until p in sieve;
        prime := prime + [p];
        m := p;
        repeat
            sieve := sieve - [m];
            m := m + p;
        until m > max;
    until sieve=[];
    m := 0;
    for p:=2 to max do 
        if p in prime then
        begin
            write(p:8);
            m := m + 1;
            if (m mod 10) = 0 then
                writeln;
        end;
    writeln;
end.
    