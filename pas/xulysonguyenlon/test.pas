function bigDiv1(a:string;b:longint):string;
var s,i,hold:longint;
    c:string;
begin
    hold:=0;s:=0;c:='';
    for i:=1 to length(a) do
    begin
        hold:=hold * 10 + ord(a[i]) - 48;
        s:=hold div b;                   {sai tu d�ng l�y}
        hold:=hold mod b;
        c:=c + chr(s + 48);
    end;
    write(c);
    while (length(c) > 1)and(c[1] = '0') do delete(c,1,1);
    bigDiv1:=c;
end;

var a,b:string;
    bv,code:longint;
begin
    readln(a,b);
    val(b,bv,code);
    writeln(bigDiv1(a,bv));
readln;
end.
