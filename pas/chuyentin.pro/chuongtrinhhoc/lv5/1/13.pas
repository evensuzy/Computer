const
    nhap = 'permudaylientuc.inp';
    xuat = 'permudaylientuc.out';
var
    n:longint;
    a:array[1..10000000] of int64;
    count,i,x:longint;
begin
assign(input, nhap);reset(input);
assign(output, xuat);rewrite(output);
    readln(n);
    for i:=1 to n do
    begin
        read(x);
        if x <= n then inc(a[x]);
    end;
    for i:=1 to n do if a[i] > 0 then count:=count + 1;
    write(n - count);
close(input);close(output);
end.
