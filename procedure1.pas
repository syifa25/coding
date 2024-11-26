program procedure1;
uses crt;

procedure hitung(x,y : integer);
var
luas_segitiga : real;

begin
    luas_segitiga := 0.5 * x * y;
    writeln('Luas Segitiga    : ',luas_segitiga:0:2);
end;

var
alas, tinggi : integer;

begin
clrscr;
    write('Alas             : ');
    readln(alas);
    write('Tinggi           : ');
    readln(tinggi);

    hitung(alas,tinggi);

end.