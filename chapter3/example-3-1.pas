program exam31(input, output);
var a, b, x : real;
begin
    writeln('input a and b');
    read(a, b);
    if a<>0 then 
    begin
        x := -b/a;
        a := 1;
    end // 这里不能有分号（；），因为分号表示IF语句的结束
    else
        writeln('The equation is degenerate');
end.