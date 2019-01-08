{如果需要传递回主程序的结果是多个，或者子程序里做的是非计算的工作，如输入输出信息等，使用函数就不能奏效}
program exam422(input, output);
var number : integer;

{PROCEDURE 要全部大写， 不然编译报错}
PROCEDURE evendec(var even : integer); { var 定义的变量是可以传回给调用函数的 }
begin
    repeat
        even := even div 2;
        write(2, ' * ')
    until odd(even)
end;{procedure evendec}

PROCEDURE odddec(var od : integer);
var i, j : integer;
begin
    j := od;
    i := 3;
    repeat
        while (od mod i) = 0 do
        begin
            write(i, ' * ');
            od := od div i
        end;
        i := i + 2
    until i>j div 2;
    if od = j then
        writeln(od)
    else
        writeln(1)
end; {procudure odddec}

begin {main program}
    writeln('input number');
    read(number);
    if not odd(number) then
        evendec(number);
    odddec(number)
end.