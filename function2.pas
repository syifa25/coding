program function2;
uses crt;

function hitung_rata(arr: array of integer; n: integer): real;
var
    i, total: integer;
begin
    total := 0;
    for i := 0 to n-1 do
        total := total + arr[i];

    hitung_rata := total / n;
end;

var
    data: array[1..100] of integer;
    n, i: integer;
    rata: real;

begin
    clrscr;
    write('Banyak data: '); 
    readln(n);

    for i := 1 to n do
    begin
        readln(data[i]);
    end;

    rata := hitung_rata(data, n);
    writeln('Rata-rata: ', rata:0:2);

end.
