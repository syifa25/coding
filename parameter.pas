uses crt;
function jumlahkan(no1,no2:integer):integer;
begin
    jumlahkan := no1 + no2 ;
end;

var
    a,b,hasil : integer;
begin
    clrscr;
    a := 100;
    b := 200;

    hasil := jumlahkan(a,b);
    writeln('Hasil = ', hasil);
end.