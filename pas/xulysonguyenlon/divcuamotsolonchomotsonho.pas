
const
    nhap = 'divcuamotsolonchomotsonho.inp';
    xuat = 'divcuamotsolonchomotsonho.out';
function bigDiv1(a:string;b:longint):string;
var s,i,hold:longint;
    code:byte;
    c:string;
begin
    hold:=0;s:=0;c:='';
    for i:=1 to length(a) do
    begin
        hold:=hold * 10 + ord(a[i]) - 48;
        s:=hold div b;
        hold:=hold mod b;
        c:=c + chr(s + 48);
    end;
    while (length(c) > 1)and(c[1] = '0') do delete(c,1,1);
    bigDiv1:=c;
end;

var a,b:longint;
    as:string;
begin
assign(input, nhap); reset(input);
assign(output, xuat); rewrite(output);
    read(a,b);
    str(a,as);
    writeln(as,' ',b);
    writeln(bigDiv1(as,b));
close(input);close(output);
end.
