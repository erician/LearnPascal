program exam412(input, output);
var r, r1, r2, r3, r4, r5, r6 : real;

function  parall(a, b : real) : real;
var p :real;
begin
    p := a*b/(a+b);
    parall := p;
end;

begin
    writeln('input all resistores r1 -- r6');
    read(r1, r2, r3, r4, r5, r6);
    r := parall(r4, r5 + r6);
    r := parall(r2, r3 + r);
    r := r1 + r;
    writeln('resistor r = ', r)
end.