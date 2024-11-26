program fungsi1;
uses crt;

function hitung(x,y : integer) : real;

begin
    hitung := 0.5 * x * y;
end;

var
alas, tinggi : integer;
luas_segitiga : real;

begin
clrscr;
    write('Alas             : ');
    readln(alas);
    write('Tinggi           : ');
    readln(tinggi);

    luas_segitiga := hitung(alas,tinggi);
    writeln('Luas Segitiga    : ', luas_segitiga:0:2);
end.