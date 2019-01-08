program exam332(output);
{Draw a sin wavefrom}
const pi = 3.14159;
var i, w : integer;
    y : real;
begin
    for i := 1 to 80 do
        write('----');
    for i := 1 to 23 do
    begin
        y := sin(i*15*pi/180);
        w := round(35*y+40);
        if w = 40 then
            writeln(' * ' : w)
        else if w > 40 then
            writeln(' | ':40, ' * ': w-40)
        else
            writeln(' * ':w, ' | ': 40-w)
    end
end.