const
    nhap = 'SEQ.inp';
    xuat = 'SEQ.out';
var n,i,max:integer;
    a:array[1..200] of int64;
    sum:int64;
begin
assign(input, nhap);reset(input);
assign(output, xuat);rewrite(output);
    readln(n);
    max:=1;sum:=0;
    for i:=1 to n do
    begin
        read(a[i]);
        sum:=sum+a[i];
        if a[i] > a[max] then max:=i;
    end;
    if a[max] = sum - a[max] then write(a[max]) else write('N');
close(input);close(output);
end.