const
    nhap = 'bikm.inp';
    xuat = 'bikm.out';
var a:array[0..10000000] of longint;
    ans,x,n,k,i:longint;
begin
assign(input, nhap);reset(input);
assign(output, xuat);rewrite(output);
    readln(n,k); ans:=0;
    for i:=1 to n do
    begin
        readln(x);
        if a[x] = 0 then a[x]:=i else if x > ans then if i - a[x] <= k then ans:=x else a[x]:=i;
    end;
    write(ans);
close(input);close(output);
end.