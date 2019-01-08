program exam51(output);
type
    units = (inches, feet, yard, miles);
var 
    engunit, length : units;
    flag : boolean;
begin
    engunit := feet;
    length := succ(engunit);
    flag := pred(engunit) < succ(length);
    writeln(ord(engunit):3, ord(length):3, '--', flag)
end.