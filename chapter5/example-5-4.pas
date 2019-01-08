program exam54(input, output);
const 
    maxradix = 9;
    maxlen = 24;
type
    radix = 2..maxradix;
var
    data : real;
    scale:radix;

PROCEDURE convert(num:real;rad:radix)
var
    i:1..maxlen;
    int:0..8;
    digit:'0'..'8';
begin
    if num < 0 then
    begin
        write('-');
        num := abs(num)
    end;
    write('0.');
    for i:=1 to maxlen do 
    begin
        int := trunc(num*rad);
        digit := chr(ord('0')+int);
        write(digit);
        num := num*rad - int
    end
end;

begin {main}
    read(data);
    for scale := 2 to maxradix do 
    begin
        convert(data, scale);
        writeln
    end
end.