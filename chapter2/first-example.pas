program exam21(input, output);
{input three numbers, claculate and output the average}
const number = 3;
var a, b, c, average : integer;
begin
    writeln('input three numbers');
    write('input a = ');
    read(a);
    write('input b = ');
    read(b);
    write('input c = ');
    read(c);
    average := (a+b+c) DIV number;
    write('average = ', average:4)
end.
