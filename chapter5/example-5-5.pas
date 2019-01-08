program exam55(input, output);
const
    maxstudents = 100;
    pass = 60;
type
    count = 0..maxstudents;
    scorelist=array[count]of integer;
var
    i, k : count;
    a : scorelist;
    mean : real;
begin
    mean := 0.0;
    k := 1;
    i := 0;
    readln(a[k]);
    while a[k] >= 0 do 
    begin
        if a[k]>=pass then
        begin
            mean := mean + a[k];
            i := i+1
        end;
        k := k + 1;
        readln(a[k]);
    end;
    mean := mean / i;
    {下面两行没有打印出来，很奇怪}
    writeln('there are ', i, 'students passing');
    writeln('the average score of passing students is ', mean:6:2);
end.