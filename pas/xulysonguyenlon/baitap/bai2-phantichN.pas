const
    nhap = 'bai2_phantichN.inp';
    xuat = 'bai2_phantichN.out';
function quintillion(x,y:longint):longint;
var ans,i:longint;
begin
    ans:=1;
    for i:=1 to y do ans:=ans * x;
    quintillion:=ans;
end;

var n,i,count,countUoc:longint;
    sumUoc:real;
begin
assign(input, nhap);reset(input);
assign(output, xuat);rewrite(output);
    read(n);
    count:=0; sumUoc:=1; countUoc:=1;
    i:=2;
    while i*i <= n do
    begin
        while n mod i = 0 do
        begin
            count:=count+1;
            write(i,' ');
            n:=n div i;
        end;
        inc(i);
        countUoc:=countUoc * (count + 1);
        sumUoc:=((quintillion(i,count+1)-1)/(i-1)) * sumUoc;
        count:=0;
    end;
    if n>1 then write(n);writeln;
{---------phan_tich_n_thanh_thua_so_nguyen_to-----------}
    writeln(countUoc,' ',sumUoc:0:0);


close(input);close(output);
end.
